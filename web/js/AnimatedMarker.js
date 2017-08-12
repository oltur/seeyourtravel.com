/*
 * L.AnimatedMarker is used to display animated icons on the map.
 */

L.AnimatedMarker = L.Marker.extend({
    options: {
        // meters
        distance: 400,
        // ms
        interval: 2000,
        // animate on add?
        autoStart: true,
        // callback onend
        onEnd: function () {
        },
        onStep: function (p) {
        },
        clickable: false
    },
    useTransition: true,
    initialize: function (latlngs, options) {
        if (this.useTransition && L.DomUtil.TRANSITION) {
            // No need to to check up the line if we can animate using CSS3
            this._latlngs = latlngs;
        } else {
            // Chunk up the lines into options.distance bits
            this._latlngs = this._chunk(latlngs);
            this.options.distance = 10;
            this.options.interval = 30;
        }

        L.Marker.prototype.initialize.call(this, latlngs[0], options);
    },

    // Breaks the line up into tiny chunks (see options) ONLY if CSS3 animations
    // are not supported.
    _chunk: function (latlngs) {
        var i,
            len = latlngs.length,
            chunkedLatLngs = [];

        for (i = 1; i < len; i++) {
            var cur = latlngs[i - 1],
                next = latlngs[i],
                dist = cur.distanceTo(next),
                factor = this.options.distance / dist,
                dLat = factor * (next.lat - cur.lat),
                dLng = factor * (next.lng - cur.lng);

            if (dist > this.options.distance) {
                while (dist > this.options.distance) {
                    cur = new L.LatLng(cur.lat + dLat, cur.lng + dLng);
                    dist = cur.distanceTo(next);
                    chunkedLatLngs.push(cur);
                }
            } else {
                chunkedLatLngs.push(cur);
            }
        }

        return chunkedLatLngs;
    },

    onAdd: function (map) {
        L.Marker.prototype.onAdd.call(this, map);
        var self = this;

        map.on('zoomend', function () {
            if (typeof (self._i) != "undefined") {
                var t = self._latlngs[self._i];
                var cssIconSentence;
                var cssShadowSentence;
                if (self.useTransition && L.DomUtil.TRANSITION) {
                    if (self._icon) {
                        cssIconSentence = self._icon.style[L.DomUtil.TRANSITION];
                        self._icon.style[L.DomUtil.TRANSITION] = '';
                    }
                    if (self._shadow) {
                        cssShadowSentence = self._shadow.style[L.DomUtil.TRANSITION];
                        self._shadow.style[L.DomUtil.TRANSITION] = '';
                    }
                }

                self.setLatLng(t);

                setTimeout(function () {
                    if (self.useTransition && L.DomUtil.TRANSITION) {
                        if (self._icon) {
                            self._icon.style[L.DomUtil.TRANSITION] = cssIconSentence;
                        }
                        if (self._shadow) {
                            self._shadow.style[L.DomUtil.TRANSITION] = cssShadowSentence;
                        }
                    }
                }, 1);
            }
        });

        // Start animating when added to the map
        if (this.options.autoStart) {
            this.start();
        }
    },

    resetAM: function () {
        this._i = 0;

        var t = this._latlngs[0];
        if (this.useTransition && L.DomUtil.TRANSITION) {
            if (this._icon) {
                this._icon.style[L.DomUtil.TRANSITION] = '';
            }
            if (this._shadow) {
                this._shadow.style[L.DomUtil.TRANSITION] = '';
            }
        }
        this.setLatLng(t);
    },

    isFinished: function () {
        return (this._i === this._latlngs.length);
    },

    animate: function () {
        var self = this,
            len = this._latlngs.length,
            speed = this.options.interval;

        // Normalize the transition speed from vertex to vertex
        if (this._i < len) {
            if (this._i > 0) {
                speed = this._latlngs[this._i - 1].distanceTo(this._latlngs[this._i]) / this.options.distance * this.options.interval;
            }
            else {
                speed = this._latlngs[this._i + 1].distanceTo(this._latlngs[this._i]) / this.options.distance * this.options.interval;
            }
        }

        // Only if CSS3 transitions are supported
        if (this.useTransition && L.DomUtil.TRANSITION) {
            if (this._icon) {
                this._icon.style[L.DomUtil.TRANSITION] = ('all ' + speed + 'ms linear');
            }
            if (this._shadow) {
                this._shadow.style[L.DomUtil.TRANSITION] = 'all ' + speed + 'ms linear';
            }
        }

        // Move to the next vertex
        var t = this._latlngs[this._i];
        this.setLatLng(t);
        this._i++;

        // Fire onStep if requested
        if (self.options.onStep)
            setTimeout(function () {
                self.options.onStep(t);
            }, 1);

        // Queue up the animation to the next vertex
        this._tid = setTimeout(function () {
            if ((self._i === len)) {
                self.options.onEnd.apply(self, Array.prototype.slice.call(arguments));
            } else {
                self.animate();
            }
        }, speed);
    },

    // Start the animation
    start: function () {
        if (!this._i) {
            this._i = 1;
        }
        else {
            this.resetAM();
        }

        this.startagain();
    },

    // Continue the animation
    startagain: function () {
        //if (this.isFinished()) {
        //    this.initialize();
        //}
        if (!this._i) {
            this._i = 1;
        }

        var self = this;
        setTimeout(function () {
            self.animate();
        }, 10);
    },

    // Stop the animation in place
    stop: function () {
        if (this._tid) {
            clearTimeout(this._tid);
        }
    }
});

L.animatedMarker = function (latlngs, options) {
    return new L.AnimatedMarker(latlngs, options);
};