:: IXP400 SW Release Crypto version 2.1
:: 
:: -- Copyright Notice --
:: 
:: @par
:: Copyright (c) 2001-2005, Intel Corporation.
:: All rights reserved.
:: 
:: @par
:: Redistribution and use in source and binary forms, with or without
:: modification, are permitted provided that the following conditions
:: are met:
:: 1. Redistributions of source code must retain the above copyright
::    notice, this list of conditions and the following disclaimer.
:: 2. Redistributions in binary form must reproduce the above copyright
::    notice, this list of conditions and the following disclaimer in the
::    documentation and/or other materials provided with the distribution.
:: 3. Neither the name of the Intel Corporation nor the names of its contributors
::    may be used to endorse or promote products derived from this software
::    without specific prior written permission.
:: 
:: 
:: @par
:: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS''
:: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
:: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
:: ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
:: FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
:: DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
:: OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
:: HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
:: LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
:: OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
:: SUCH DAMAGE.
:: 
:: 
:: @par
:: -- End of Copyright Notice --
rem Tornado environment settings. Edit these to reflect your installation.
set WIND_BASE=c:\tornado
set WIND_HOST_TYPE=x86-win32
set WIND_HOST_BASE=%WIND_BASE%

rem The location of the ixp400_xscale_sw directory (needed to build the vxWorks BSP)
set CSR_BASE=c:\change\this\to\your\ixp400_xscale_sw

rem Tool location for diab support
set DIABLIB=c:\path\to\the\diab\tool

set PATH=%WIND_BASE%\host\%WIND_HOST_TYPE%\bin;%DIABLIB%\WIN32\bin;%PATH%

rem NOTE: All flag definitions below are case sensitive

rem For IXDP425 platform, set IX_DEVICE to ixp42X
rem For IXDP465 platform, set IX_DEVICE to ixp42X or ixp46X
set IX_DEVICE=ixp42X

rem For IXDP425 platform, set IX_PLATFORM to ixdp42x 
rem For IXDP465 platform, set IX_PLATFORM to ixdp46x
set IX_PLATFORM=ixdp42x

rem For Big endian, set IX_TARGET to vxbe
rem For Little endian, set IX_TARGET to vxle
set IX_TARGET=vxbe

