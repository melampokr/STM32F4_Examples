#!/bin/bash

# STM32F446ZE Flash Memory Start Address = 0x08000000
st-flash write ./build/plrtest_stm.bin 0x08000000
