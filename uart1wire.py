import logging
import serial
import time

logger = logging.getLogger(__name__)


class Uart1Wire:
    def __init__(self, port: str, presence_res=0xE0):
        """
        presence_res: Response of slave to Initialization sequence
        """
        try:
            self.__ser = serial.Serial(port, timeout=1)
        except:
            raise

        self.__presence_res = presence_res

    def __bitwrite(self, bit: bool):
        self.__ser.baudrate = 115200
        bb = b"\xFF" if bit else b"\x00"
        self.__ser.write(bb)

    def __bitread(self) -> bool:
        self.__ser.baudrate = 115200
        self.__ser.reset_input_buffer()
        self.__ser.write(b"\xFF")
        r = self.__ser.read()
        # TODO: Checkc read len
        if r[0] == 0xFF:
            return True
        else:
            return False

    def bytewrite(self, byte: int):
        for i in range(8):
            bit = byte & (1 << i) > 0
            self.__bitwrite(bit)

    def byteread(self) -> int:
        byte = 0
        for i in range(8):
            b = self.__bitread()
            if b:
                byte = byte | (1 << i)
        return byte

    def reset(self) -> bool:
        # Change baudrate to 9600 to initialization sequence timing
        self.__ser.baudrate = 9600

        # Send sequence and read back response
        self.__ser.reset_input_buffer()
        self.__ser.write(b"\xF0")
        r = self.__ser.read(1)

        if len(r) < 1:
            return False

        # Chek slave response with specific value
        if r[0] == self.__presence_res:
            return True
        else:
            return False
