# Building the Three-Seventy distribution 

These are the instructions for building the three-seventy distribution form scratch. 

These instructions are designed to give the user a deeper understanding of how this distribution was built and how to customize it to suit their needs. They are based upon the original documentation of Jay Moseley with various changes as the maintainer 


## Basic Procedure

We will be following along with IBM's typical build 


1. Build a [starter system](building_the_starter_system.md) containing a bare minimum system, into which we install the binaries and sources from the installation media. 

2. This produces a minimal installed system which we can then IPL and continue the build

3. We can apply outstanding patches PTFs

4. We can then add additional Compilers and development environments.

5. Finally we can add additional software.


## Requirements

To build the starter system we will need the following:

1. IBM's starter system and distribution tapes (see ibm/tapes/ directory)

2. The Hercules/390 emulator software that matches your operating system (see the hercules/*your_os* subdirectory)

3. Various utilities from the utils subdirectory. Here you will find tools like the REXX interpreter for Windows and the Windows 3270 clients


## Creating the starter system

To start we will need to assemble the various parts of the Starter System and commence building our initial installation.

But first some background:

## History

IBM worked with each customer to custom-configure every mainframe installation to suit both the customer's individual requirements, and also match the configuration of the customer's hardware order.

IBM couldn't create a binary installation individually customised for every customer that they could just restore from a tape. 

Instead they chose to create a standard **starter system** that had a minimal configuration that was common to every installation. 

This Starter System was based on a cut-down MVS 3.7 installation with enough internals for the customer to initialize the customer's brand new DASDs (disk devices) formatting them to the appropriate format before a restore of a tape was performed creating various datasets containing various data and tools. Then various jobs were run to build the system to the customer's custom configuration (the System Generation).

#### Jay Moseley's Installation

In the Jay's original instructions for installing MVS to his method (of which this distribution is based), Jay instructed the user to download these tapes from another webpage on his site. 

In our distribution, all IBM supplied tapes and manuals are *included* in the IBM directory[^1]. 

#### Starter System Tape Set (2 tapes)

This was supplied directly by IBM on two tapes. Each tape contained three files:

1. a stand-alone program to initialize a DASD volume
2. a stand-alone program to restore a tape dump to a DASD volume
3. a tape dump of the DASD volume

Originally, IBM would also supply some punch card jobs to load to load the job that would run these retorations calling the programs from tape.

As we are using emulated hardware (including emulated tape drives), we have emulated tapes[^2]


#### Distribution Tape Set (6 tapes)

The MVS 3.8j distribution tape set was supplied by IBM on six tapes.

Of these six tapes we will only need three tapes.

##### Tape 1 - System Modification Program etc

The first tape that we will use contains the System Modification Program (SMP) load modules and procedures. The starter system already contains a version of SMP but at a early version to correctly build on MVS 3.8j. Hence we will need the updated version from this tape.

This tape also includes the procedures to build the distribution libraries for MVS 3.8j.

##### Tape 2 - MVS 3.8j Product Libraries

The second tape contains the distribution libraries for the generated system.

##### Tape 3 - MVS 3.8j Product Libraries

The final tape contains a more recent version of the Device Support Facilities than the version installed by the components on tape 2 above. 

These updated DSF utilities support DASD types later than MVS 3.8j (specifically the larger 3375, 3380 and 3390 DASD devices). 

We will choose in our installation to use these larger devices to reduce the total number of DASD devices attached to the system.

This requires us to load various user modifications to our installation to allow use to access these devices (thus requiring updated/patched tools and utilities).


#### Footnotes:

[^1]: The IBM directory includes both the original IBM starter and distribution tapes (IBM/tapes), but also the original IBM manuals (IBM/manuals).

[^2]: There are two main emulated tape formats: AWS and HET (Hercules Emulated Tape. The AWS emulated tape was created for the P/390. Later the Hercules project created the HET format based upon the AWS format but added compression).
