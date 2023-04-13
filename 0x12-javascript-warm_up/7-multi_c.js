#!/usr/bin/node
const w = Math.floor(Number(process.argv[2]));
if (isNaN(w)) {
     console.log('Missing number of occurrences');
   } else {
     for (let i = 0; i < w; i++) {
       console.log('C is fun');
     }
   }

