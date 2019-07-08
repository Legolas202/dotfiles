const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#242423", /* black   */
  [1] = "#92666F", /* red     */
  [2] = "#898A74", /* green   */
  [3] = "#AD768A", /* yellow  */
  [4] = "#AB999C", /* blue    */
  [5] = "#CEA2B2", /* magenta */
  [6] = "#BEC3B2", /* cyan    */
  [7] = "#e2d2da", /* white   */

  /* 8 bright colors */
  [8]  = "#9e9398",  /* black   */
  [9]  = "#92666F",  /* red     */
  [10] = "#898A74", /* green   */
  [11] = "#AD768A", /* yellow  */
  [12] = "#AB999C", /* blue    */
  [13] = "#CEA2B2", /* magenta */
  [14] = "#BEC3B2", /* cyan    */
  [15] = "#e2d2da", /* white   */

  /* special colors */
  [256] = "#242423", /* background */
  [257] = "#e2d2da", /* foreground */
  [258] = "#e2d2da",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
