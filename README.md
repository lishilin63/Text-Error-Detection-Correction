# Project: OCR (Optical Character Recognition) 

![image](figs/intro.png)

### [Full Project Description](doc/project4_desc.md)

Term: Fall 2018

+ Team #1
+ Team members
	+ Li, Shilin; SL4261
	+ Jin, Peiqi; PJ2324
	+ Sun, Qiaqia; QS2184
	+ Wang, Zehan; ZW2457
	+ Yin, Yiqiao; YY2502

+ Project summary: In this project, we created an OCR post-processing procedure to enhance Tesseract OCR output. We focus on post-processing which includes two tasks: error detection and error correction. We will conduct this analysis in the following steps: (1) error detection, (2) error correction, (3) candidates selection, (4) comparison between MLE and ELE, and (5) evaluation and performance measure.

+ Papers: Our assigned papers are (1) [Probability Scoring for Spelling Correction](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/doc/paper/C-4.pdf) and (2) [On Retrieving Legal Files](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/doc/paper/D-1.pdf).

* Main Submission: We prepared an integrated document in RMD format. Please click [link](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/doc/main.Rmd)

![image](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/figs/screen-1.PNG)

First, we will walk through our audience step-by-step process of how we detect errors after processed files. We take the the proposed methods from paper (1) and we present in detail the steps needed to search for the text errors.
![image](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/figs/screen-2.PNG)

Next, we will present our analysis on error correction. We will specifically use paper (2) and we compute, with great details, the four probabilities required to correct the errors. 
![image](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/figs/screen-3.PNG)

In this 
![image](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/figs/screen-4.PNG)
![image](https://github.com/TZstatsADS/Fall2018-Project4-sec1--section1-project4_group1/blob/master/figs/screen-5.PNG)
	
**Contribution statement**: ([default](doc/a_note_on_contributions.md)) All team members contributed equally in all stages of this project. All team members approve our work presented in this GitHub repository including this contributions statement. 

We also want to thank Professor Ying Liu and Professor Tian Zheng for hosting lectures of Advanced Data Science this semester. It is with transcending gratitude that we announce here what an inspiration both professors have been throughout our experience of building this project. Their knowledge, understanding and genuine “care” for others is illuminated in everything they do! We, Group 1, are in forever debt for their teachings. Moreoever, we also want to thank TA, Chengliang Tang. There is not enough we can say about how much we thank heaven that he is our teaching assistance. His patience and understanding are unsurpassed. We are grateful for being his students.


```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
