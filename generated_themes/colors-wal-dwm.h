static const char norm_fg[] = "#e2d2da";
static const char norm_bg[] = "#242423";
static const char norm_border[] = "#9e9398";

static const char sel_fg[] = "#e2d2da";
static const char sel_bg[] = "#898A74";
static const char sel_border[] = "#e2d2da";

static const char urg_fg[] = "#e2d2da";
static const char urg_bg[] = "#92666F";
static const char urg_border[] = "#92666F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
