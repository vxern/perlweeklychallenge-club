#!/usr/bin/env raku

my @H;
my @T;

@H = ( 555,  532,  757,  939,  541,  573,  947,  503,  308,  148,   61,  820, 
       973,  865,  270,  230,  399,  643,   82,  642,  171,  591,  850,  494, 
       338,  699,  164,  431,  155,  922,  792,  772,  517,  909,  770,  564, 
       143,  997,  498,  354,   19,  127,  797,  120,  401,  375,  688,  890, 
       982,  137,  810,  467,  407,   20,   83,  182,  420,  466,  760,  429, 
        81,  808,  689,   42,  433,  830,  544,  194,  745,  550,  937,  297, 
       129,   56,  196,  525,  172,  956,  121,  640,  226,  553,  151,  803, 
       274,  551,  885,  254,  351,  437,  684,  685,  798,  664,  738,  842, 
       486,  211,  310,  981,   37,  295,  301,  208,  243,    6,  657,  410, 
       700,  915,   65,  539,   13,  479,  938,  753,  916,  413,  652,  662, 
       506,  419,  625,   25,  435,   53,  312,  397,  469,  998,  668,  649, 
       212,   40,  287,  966,  343,  581,  500,   69,  111,  321,  158,  387, 
       988,  119,  718,  166,  427,  826,  109,  679,  736,  331,  439,  326, 
       769,  139,  141,  450,  883,  839,  585,  597,  242,  395,  173,   41, 
       711,  162,   54,  595,   10,   14,  742,    9,  306,  715,  146,  576, 
       547,  655,  548,  362,  477,  669,  752,  960,  244,  732,  279,  667, 
       628,   72,  722,  822,  955,  520,  832,  703,   43,  949,  903,  762, 
       204,  841,  350,  693,  140,  386,  529,  381,  329,  400,  255,  912, 
        80,  924,  272,  763,  754,  150,  203,  462,   26,  835,  299,  497, 
       571,  170,   89,  377,  492,  623,  276,   38,  552,  666,  460,  156, 
        74,  900,  969,  369,  577,  382,  425,  964,  359,  482,  488,  302, 
       827,  507,  328,  771,  959,  690,  292,  963,  765,  409,  615,  927, 
       965,  142,   18,  490,  115,  463,  501,  639,  895,  675,  365,  929, 
       508,  946,  889,  360,  453,  414,  714,  665,  118,   73,  801,  240, 
       241,   15,  728,  380,  780,  756,  931,  557,  950,  543,  412,  612, 
       877,  246,  812,  944,  976,  791,  316,  654,  263,  526,  122,  993, 
       103,  269,  768,  673,  926,  530,  786,   98,  739,  875,  723,  123, 
       852,  473,  787,  794,  580,  962,  408,  618,  441,  867,  130,  106, 
       892,  776,  213,   48,  880,  838,  214,  281,  646,  656,  341,  720, 
       510,    8,  193,  471,  607,  385,  899,  906,  980,  853,  104,  896, 
       908,  854,  989,  283,  987,  729,  227,  904,  458,  727,  277,  509, 
       721,   88,  531,  147,  534,  228,  347,  602,  819,  327,   36,  825, 
       371,  309,  451,   27,  575,  376,  286,  743,  670,  778,    5,  370, 
       610,   24,   21,   34,  528,  476,  799,  184,  201,  538,  587,  157, 
         7,  342,   70,  325,  790,  210,   32,  674,  802,  691,  953,  750, 
       317,  659,  505,  481,  545,    3,  229,  417,  716,  710,  268,  383, 
       876,   30,   76,  621,  712,  499,  455,  285,  603,  275,   96,  215, 
       837,  781,  177,  746,  683,  570,  600,  483,  828,  972,  961,  416, 
       174,  446,  470,  461,  999,  542,  836,  535,  353,  958,  319,  549, 
        57,  238,  132,  823,  789,   99,    1,  632,  356,  163,  484,  967, 
       218,  361,  901,  637,  647,  706,  582,  884,  282,  428,  379,  943, 
       237,  751,  396,  300,  735,  940,  614,  117,  102,  145,  697,  487, 
       933,  178,  424,  834,  296,  304,   58,  247,  116,  731,  923,  849, 
       176,  563,  225,  454,  779,  217,  774,  793,  472,  948,   90,  415, 
       905,  990,  323,  183,  519,  749,  910,  928,  169,  613,  565,  598, 
       627,  975,  334,  265,  298,  422,  346,  358,  457,  249,   17,  389, 
       782,  159,  305,  220,  391,  881,  452,  250,  634,  680,  280,  405, 
        63,  694,  660,  189,  260,   29,  878,  567,  855,  695,  868,  882, 
       168,  540,  345,  974,  862,  805,  257,  807,  324,  755,  348,  859, 
       708,  942,  599,  340,  443,  617,  601,  663,  831,  303,  986,  977, 
       682,  337,  108,  635,   97,  594,  588,  107,   11,   45,   64,  339, 
       569,  806,  200,  811,  388,  372,   52,  970,  144,  432,  864,  562, 
       844,  724,  681,  609,  886,  861,  860,  638,  644,  504,  917,   51, 
       394,  702,  209,  851,    4,  512,  995,  866,  726,   94,  165,  951, 
       128,  192,  800,  430,  696,  631,  167,  804,  474,  518,  373,  925, 
       869,  873,  653,  863,  902,  698,  572,  846,  707,  135,  747,  112, 
        12,  153,  725,  493,  579,   79,   16,  421,  992,  893,  809,  546, 
       185,  945,  126,  671,  630,  219,  320,  764,  687,  589,  766,  514, 
       584,  495,  398,  149,  741,  932,   71,   60,  221,  318,  611,  511, 
       994,  705,  744,  480,  478,  709,  796,  256,  795,  984,   67,  378, 
       278,  311,  658,  775,  777,  289,  719,  459,  253,   78,   55,  692, 
       231,  833,  971,  533,  872,  404,   75,  100,  887,  191,  363,  251, 
        35,  393,  870,  179,  233,  561,  843,  748,  252,  307,  235,  368, 
       134,  449,  578,   44,  468,  355,  330,  314,  264,  258,  560,  261, 
       759,  522,  605,  626,  921,  266,  152,  205,  436,  367,  911,  262, 
       447,  568,  222,  661,  186,  114,  678,  920,  489,  898,   93,  288, 
       783,   86,  392,  199,  332,  442,  131,  101,  616,  590,  978,  583, 
       918,  245,  521,   66,  110,  438,  829,  979,  366,  954,  593, 1000, 
       406,  335,  991,  919,   62,  402,  734,  322,  491,   22,  516,  411, 
       445,   28,  236,  879,  271,   59,  608,  574,  650,  858,  894,  930, 
       284,  502,  267,  448,  648,  556,  374,  784,   84,  874,   47,  821, 
        85,  180,  313,  364,  897,  390,  206,  651,  845,  202,  125,  344, 
       740,  952,  788,  913,  475,  524,   68,  291,  761,  767,  464,  133, 
       824,  888,  629,  223,  907,  566,  423,  704,  418,  730,  847,  216, 
       294,  558,  606,  818,  357,  586,  426,  636,   91,   39,   46,  161, 
       941,   92,  857,  440,  624,  914,  641,  293,  619,  485,  713,  983, 
       816,  154,  336,  813,  197,  676,   31,  686,  188,  207,  840,  815, 
       444,   49,  496,  273,   33,   77,  957,  434,  871,  604,  349,  113, 
       195,  384,  701,  515,  935,  190,  465,  352,  513,   50,  537,  456, 
       248,  848,  403,  672,  592,   23,  536,  817,  620,  758,  936,  136, 
       733,  105,  160,  554,  290,  856,  175,  773,  138,  232,  198,  187, 
       934,  596,  737,  124,  985,  234,  968,  559,  315,  259,    2,   95, 
       633,  996,  785,  645,  333,  814,  239,  527,  181,  891,  677,  224, 
        87,  622,  717,  523);

@T = ( 286,  253,  160,   50,  295,  291,   10,  243,  607,  356,  578,  135, 
        20,   33,  617,  426,  463,  149,  610,  301,  419,  333,  130,   34, 
       516,  151,  331,  437,  354,   70,  205,   35,  376,   38,  104,  435, 
       713,    1,   48,  192,  179,  344,    8,   63,  447,  546,  162,   12, 
         1,  241,   56,   37,  402,  460,  857,  207,  470,  156,    1,   10, 
       411,  108,   87,  958,  130,  155,  384,  179,  253,  306,   20,  591, 
       650,  198,  543,  437,  141,   17,  256,   31,  154,  269,   84,  141, 
       116,  251,  110,  258,  586,  177,   32,  220,  101,   25,  178,    2, 
       116,  724,  633,   11,  310,  120,   59,  679,  640,  721,  215,  570, 
        36,   79,  580,   51,  395,  417,   61,   88,   23,  504,  267,  182, 
       412,  560,  352,  458,  147,   53,  490,  441,  367,    0,  122,   89, 
       511,   23,  465,   19,  294,  219,  253,  666,  640,  444,   72,  296, 
        10,  599,  160,  361,  492,   19,  172,  160,  246,   95,  438,  280, 
       161,  635,  431,  421,   42,   87,    8,  343,  628,  269,  136,  703, 
        26,  143,   34,   43,  645,  746,  224,  246,  280,  116,  572,  420, 
       121,  264,  417,  557,   96,   42,  173,    5,  712,   62,  553,  188, 
       197,  191,   44,   35,    3,  170,   77,  140,  193,   11,   26,  118, 
         0,   37,  430,  121,  107,  362,   21,  429,  545,  255,  654,   48, 
       217,   67,  262,  169,   98,  162,  127,  364,  460,  117,  634,   85, 
        68,  224,  265,  171,  346,  303,   14,  602,   77,  289,   53,  124, 
       707,   28,   28,   75,   65,  604,  172,    5,  425,  250,   98,  671, 
        33,  384,  338,   46,   23,   48,  586,   18,  185,  404,  327,   58, 
        32,   33,  414,  458,  698,  173,  216,  102,   13,  317,  241,   16, 
       463,   27,   75,  226,  442,  423,   44,   69,  435,  346,   40,   37, 
        98,  233,  209,   97,   80,  177,   60,  389,    6,    2,   65,  302, 
        37,   96,  139,   20,   11,  180,  293,  175,  690,  343,  191,    5, 
       254,   97,   83,  147,    0,  229,   32,  205,  175,   76,   45,   34, 
        19,  344,  127,  118,  377,   32,  140,   77,  440,   65,   61,  375, 
        99,  215,  776,   61,   83,   82,  586,  248,  338,  274,   77,   29, 
       305,  752,  289,  138,  342,  156,   23,   74,   19,  120,  240,   40, 
        20,  140,    0,   26,   10,  167,  342,   78,  162,  244,  145,  438, 
         4,  605,  240,   88,  439,  389,  449,  165,    1,  196,  378,  111, 
       223,  302,  278,  771,  248,  171,  690,  131,  266,  153,  686,  420, 
       385,  528,  248,  586,  208,  486,   67,  285,  559,   78,  255,  295, 
       972,   27,   13,  562,   41,  180,  320,  212,   60,    3,    3,  231, 
       219,  299,  244,  500,  129,  377,  405,  362,  174,  112,   95,  463, 
       116,  346,  851,  261,   33,  296,  545,  197,   80,  385,  560,  372, 
        56,  129,  736,   83,  249,   68,  302,  297,  136,    6,   12,   44, 
       464,   70,  405,    9,    0,  156,   73,  436,  350,   36,  197,  263, 
       370,  470,  257,  121,  132,  379,  434,  243,  551,   34,  159,    3, 
       464,  200,   77,  152,  201,   97,  129,    8,  577,  337,  532,   47, 
       155,  164,  217,   34,  135,   11,  335,  132,  528,  480,  255,  246, 
        12,  479,  285,  166,  575,  572,  828,  693,  434,  145,   66,  129, 
       573,  256,   41,  325,   71,  359,  198,  182,  210,   18,  633,  393, 
        13,    8,  305,   69,   24,    3,   19,   22,  277,   16,  405,  205, 
       320,    1,  149,  373,   41,  112,  559,  445,  145,  409,  715,  267, 
       173,   79,  663,  348,  292,   64,  354,  426,   61,   34,  206,  316, 
       479,  246,  323,  272,  274,  154,  111,  150,   50,   56,  129,   82, 
       549,   45,  114,   24,   40,  163,  701,   23,  190,  114,  646,   51, 
       142,   55,  214,  460,  377,  298,   84,  292,  160,    6,    2,    8, 
        47,  466,  863,  233,  107,  352,  380,  382,  542,  271,  925,  505, 
        51,   50,  332,  159,    9,  359,  771,    8,  814,  461,  125,  152, 
        75,  266,  143,  368,   95,   16,   18,   71,  234,  197,   50,  398, 
        16,   73,   44,    2,  860,  453,    5,   30,  219,   67,  573,   39, 
       153,  361,  102,  489,  234,  357,  252,   73,  100,  371,  507,   34, 
        15,   86,   88,   44,   26,  216,  113,   94,   24,  416,  198,  123, 
       957,   94,   92,  263,  119,  198,  762,  312,    8,   40,  135,   51, 
       130,    4,  600,  317,  302,  578,  299,  184,  163,  332,   50,  356, 
       376,  339,   45,  585,  144,   66,  823,  666,  708,   83,  233,  322, 
         1,  141,   52,  427,  489,  275,  125,  111,    1,   16,  785,  519, 
       346,  374,  323,  149,  127,  565,  217,  149,  634,  537,  592,   69, 
       668,   24,   19,  177,    7,  365,  530,  794,   84,  757,  632,  293, 
       681,   69,  112,   71,  193,  430,   28,  224,  276,  486,  483,  144, 
        20,  521,  414,  512,  458,   51,  125,  612,  166,  357,  120,  532, 
        91,  344,   81,  331,   58,   63,  837,  628,  100,  305,   87,  171, 
       176,  429,  757,  186,  718,  629,  225,   48,  363,    2,  274,  227, 
        74,  554,   28,  123,  653,  466,  859,  750,   33,  135,   18,  185, 
        24,  258,   52,  581,  426,  277,  109,   16,  144,   11,  139,    0, 
       153,  663,    6,   74,  140,  328,  209,  389,   25,  576,   16,  422, 
       503,  381,  513,   85,  287,  272,  271,  364,    5,   43,   17,    7, 
       646,  429,  582,   19,  265,  252,   18,   63,  212,  123,  724,  119, 
       188,  423,  395,  169,   13,  139,  407,   76,  142,  123,  763,  170, 
       250,   40,   18,   21,   50,  312,   76,  532,  213,   80,  148,  147, 
       161,   24,  201,  680,   42,   11,   98,    1,  249,  185,   69,  447, 
        49,  313,  218,   54,  610,  371,  215,  212,  555,  739,   23,  741, 
         5,   20,  115,   13,  311,   79,   57,   99,  208,  219,  200,    4, 
        53,  326,  605,    7,   45,   50,  265,   84,  521,  779,  121,  142, 
       274,   89,   52,  388,  201,  406,   17,  442,   84,  192,  606,  857, 
       640,  140,   99,  407,   63,  688,  387,  222,   36,  255,  311,  459, 
       591,  112,  344,  114,  234,  563,  426,   68,  337,   82,   19,    8, 
       221,  374,   18,  141,  408,   49,  391,  123,  847,  409,  537,  809, 
        21,  138,  213,  250,   11,  216,   21,   33,  263,  551,  993,  496, 
        34,    2,  153,  261,  257,   74,  431,  401,  755,  101,   94,  593, 
       782,  366,  192,   11);

my @A = (@H Z @T).sort;

my @Ans;

while @A.pop -> ($h, $t) {
    @Ans.splice($t, 0, [$($h, $t)]);
}

say @Ans.map(*[0]).rotor(10)>>.fmt("%-4d").join("\n");
