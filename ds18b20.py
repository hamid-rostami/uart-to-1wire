import logging
import uart1wire
import time

logger = logging.getLogger(__name__)


class DS18B20:
    def __init__(self, port: str):
        self.phy = uart1wire.Uart1Wire(port, presence_res=0xC0)

    def command(self, commands: list):
        for cmd in commands:
            self.phy.bytewrite(cmd)

    def read(self, lenght: int):
        data = []
        for _ in range(lenght):
            data.append(self.phy.byteread())
        return data

    def temp_convert(self, data: list):
        digit = data[0] >> 4
        digit |= (data[1] & 0x07) << 4
        decimal = data[0] & 0x0F
        decimal *= 0.0625
        return digit + decimal

    def read_temp(self):
        """Read temperature with skip ROM command"""
        res = self.phy.reset()
        if res == False:
            raise Exception("No sensor found")

        self.command([0xCC, 0x44])
        self.phy.reset()

        time.sleep(0.5)

        self.command([0xCC, 0xBE])
        data = self.read(9)

        temp = self.temp_convert(data[0:2])
        return temp
