import sys
import time
import logging
import ds18b20


logger = logging.getLogger(__name__)

try:
    ds = ds18b20.DS18B20(sys.argv[1])
except Exception as e:
    logger.error(e)
    exit(1)

try:
    while True:
        try:
            temp = ds.read_temp()
            print(temp)
        except Exception as e:
            logger.error(e)
        time.sleep(1)
except KeyboardInterrupt:
    exit(0)
