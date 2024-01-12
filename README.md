# three-seventy
IBM Mainframe distribution


## This Distribution

This distribution is designed to fulfil two objectives:

1. To make an easy starter platform like [**TK4-**](https://wotho.pebble-beach.ch/tk4-/) and [**TK5**](https://www.prince-webdesign.nl/tk5) that the beginner can easily just download the latest release and unzip and run without any prior knowledge of how the distribution is built.

2. For those wanting to go a little deeper or who need to customize their build for any reason they can follow along with the instructions and customize the build as they go.

## What you will need to run this distribution

You will need either:

1. The binary release (or tarball) from the three-seventy repo on GitHub, or

2. A Clone of the repo 

3. The Hercules/390 Emulator included in this distribution

4. A 3270 terminal client in order to connect to the mainframe once running. We recommend x3270 or c3270 for Linux/BSD, and either wc3270 (free) or the excellent Tom Brennan's Vista TN3270 (paid licence c. $30) from https://www.tombrennansoftware.com/.

## Recommendation: Adding your PATH to your environment. 

It is recommended that you add the following directories to your PATH environment variable:

1. the full pathname of the *utils* directory in the root of the distribution directory.

2. the full pathname of the hercules binary directory which matches your operating system. All supported operating systems have their hercules binary in a subdirectory of the hercules directory.

## Quickstart

To get up and running immediately, just go to the repos' releases and download the latest release.

## Building your system

Full instructions for building your own customized version of this distribution from scratch can be found in the build instructions found [build/README.md](build/README.md). These instructions are based upon the work of Jay Moseley's build instructions and have been modified and extended to suit the maintainers needs.

## Host Platforms

### Hardware requirements

#### Processor and Memory
The classic IBM operating systems from the 1960s to the 1980s ran on hardware that have long since been surpassed. Their demands have been long since surpassed.

The Hercules emulator will run satisfactory on something as low as a 300MHz Pentium with as little as 32MB of RAM. 

The distribution author has run MVS 3.8j under hercules on a Raspberry Pi Zero (1st edition) with no performance problems. And there are many people who run multi-user MVS installations on a small cloud hosted server. Moshix himself runs a small linux host in the cloud serving dozens if not over a hundred users with minimal requirements. Most still functioning outdated hardware (e.g. 10 years old laptop) will completely outperform (in terms of MIPS count) even the largest IBM 3090 of yester-year in terms of it's CPU throughput [^1]

[^1]:    The mainframe's main power was not it's CPU throughput but the many other processors distributed throughout all it's communication devices which took away processing demand away from the the main CPU.

Classic IBM operating systems (OS/360, MVS 3.8, VM/370) are very light by today's standards and will run satisfactorily on a 300Mhz Pentium with as little as 32MB RAM.

#### Disk Storage

Most modern laptops and desktops of the last decade or more have plenty of storage space.

An emulated mainframe will come with *many* emulated DASDs[^2]. A small DASD like the 3330-1 will need around 100MB of space and the giant 3390-3 needs about 3GB of space. 

But Hercules also supports *compressed CKD DASD* where the emulated DASD only takes up the actual number of bytes that are actually written onto the DASD (i.e. the size of the datasets and catalogs plus any internal housekeeping the DASD uses). This results in a dramatic saving, as not only do we only need space for the actual amount of data written to the DASD but the data is compressed further reducing the demand to around 20% to 30% of the original data size.

[^2]: DASD - Direct Attached Storage Device - or hard disk as the rest of the industry knows them.


### Supported platforms

This distribution (in either released binary form or follow along build instructions) support the following operating systems natively:

1. Windows (64-bit, tested on Windows 10 and 11)
2. Linux
3. BSD ???
4. Mac ???


# Documentation Included

The distribution includes documentation for:

1. Original IBM Manuals, see [IBM_manuals.md](IBM_manuals.md) for a detailed list

2. Hercules/390 Hyperion documentation, see [hercules/Hercules.md](hercules/Hercules.md)

3. Additional Software documentation, see [manuals/software.md](manuals/software.md)

4. three-seventy documentation, see [370docs/370.md](370docs/370.md)

5. Build documentation, see [build/README.md](build/README.md) - useful if you are following along building your own custom installation.








