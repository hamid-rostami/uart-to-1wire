# Using a UART to Implement a 1-Wire Bus Master
Based on Maxim [AN214](https://pdfserv.maximintegrated.com/en/an/AN214.pdf)

# Usage

* Create `Uart1Wire` object on desired serial port.

```python
from uart1wire import Uart1Wire

u1w = Uart1Wire('/dev/ttyUSB0')
```

* Use `reset`, `bytewrite` and `byteread` methods to interact with slaves
on bus. For detail example see `ds18b20.py` file.
