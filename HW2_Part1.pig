p2 = Load 'p2.txt' USING PigStorage('\t') AS (ngram:chararray, year:int, occurrences:double, book:double);           
P2_Grouped = GROUP p2 by ngram;
P2_Averaged = FOREACH P2_Grouped { sum_occur = SUM(p2.occurrences); sum_books = SUM(p2.book); division = (double)(sum_occur/sum_books); GENERATE group, division as sumoccurbooks;}
P2_Rounded = FOREACH P2_Averaged { Rounded = (double)ROUND(sumoccurbooks*1000.0)/1000.0; GENERATE group, Rounded as Final;}
STORE P2_Rounded INTO 'HW2/HW2_Q2_1.txt' using PigStorage('\t');

~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
~                                                                                                                    
-- INSERT --                                                                                       6,1           All
