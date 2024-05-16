{...}: {
  # Install easyeffects via home-manager module
  services.easyeffects = {
    enable = true;
    preset = "micEq";
  };

  # Source easyeffects preset from the home-manager store
  home.file = {
    ".config/easyeffects/input/micEq.json".text = ''
      {
        "input": {
            "blocklist": [],
            "compressor#0": {
                "attack": 5.0,
                "boost-amount": 6.0,
                "boost-threshold": -72.0,
                "bypass": false,
                "dry": -100.0,
                "hpf-frequency": 10.0,
                "hpf-mode": "off",
                "input-gain": 0.0,
                "knee": -6.0,
                "lpf-frequency": 20000.0,
                "lpf-mode": "off",
                "makeup": 0.0,
                "mode": "Downward",
                "output-gain": 0.0,
                "ratio": 4.0,
                "release": 75.0,
                "release-threshold": -40.0,
                "sidechain": {
                    "lookahead": 0.0,
                    "mode": "RMS",
                    "preamp": 0.0,
                    "reactivity": 10.0,
                    "source": "Middle",
                    "stereo-split-source": "Left/Right",
                    "type": "Feed-forward"
                },
                "stereo-split": false,
                "threshold": -20.0,
                "wet": 0.0
            },
            "deesser#0": {
                "bypass": false,
                "detection": "RMS",
                "f1-freq": 3000.0,
                "f1-level": -6.0,
                "f2-freq": 5000.0,
                "f2-level": -6.0,
                "f2-q": 1.5000000000000004,
                "input-gain": 0.0,
                "laxity": 15,
                "makeup": 0.0,
                "mode": "Wide",
                "output-gain": 0.0,
                "ratio": 5.0,
                "sc-listen": false,
                "threshold": -20.0
            },
            "equalizer#0": {
                "balance": 0.0,
                "bypass": false,
                "input-gain": 0.0,
                "left": {
                    "band0": {
                        "frequency": 33.71369934082031,
                        "gain": -10.569999694824219,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band1": {
                        "frequency": 79.9478988647461,
                        "gain": -1.25,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band2": {
                        "frequency": 189.58599853515625,
                        "gain": 3.2100000381469727,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band3": {
                        "frequency": 449.5799865722656,
                        "gain": -4.179999828338623,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band4": {
                        "frequency": 1066.1199951171875,
                        "gain": -3.2100000381469727,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band5": {
                        "frequency": 2528.169921875,
                        "gain": -4.179999828338623,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band6": {
                        "frequency": 5995.240234375,
                        "gain": -8.680000305175781,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band7": {
                        "frequency": 14217.0,
                        "gain": 6.110000133514404,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    }
                },
                "mode": "IIR",
                "num-bands": 8,
                "output-gain": 0.0,
                "pitch-left": 0.0,
                "pitch-right": 0.0,
                "right": {
                    "band0": {
                        "frequency": 33.71369934082031,
                        "gain": -10.569999694824219,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band1": {
                        "frequency": 79.9478988647461,
                        "gain": -1.25,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band2": {
                        "frequency": 189.58599853515625,
                        "gain": 3.2100000381469727,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band3": {
                        "frequency": 449.5799865722656,
                        "gain": -4.179999828338623,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band4": {
                        "frequency": 1066.1199951171875,
                        "gain": -3.2100000381469727,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band5": {
                        "frequency": 2528.169921875,
                        "gain": -4.179999828338623,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band6": {
                        "frequency": 5995.240234375,
                        "gain": -8.680000305175781,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    },
                    "band7": {
                        "frequency": 14217.0,
                        "gain": 6.110000133514404,
                        "mode": "APO (DR)",
                        "mute": false,
                        "q": 1.229200005531311,
                        "slope": "x1",
                        "solo": false,
                        "type": "Bell",
                        "width": 4.0
                    }
                },
                "split-channels": false
            },
            "gate#0": {
                "attack": 1.0,
                "bypass": false,
                "curve-threshold": -50.0,
                "curve-zone": -2.0,
                "dry": -100.0,
                "hpf-frequency": 10.0,
                "hpf-mode": "off",
                "hysteresis": true,
                "hysteresis-threshold": -3.0,
                "hysteresis-zone": -1.0,
                "input-gain": 0.0,
                "lpf-frequency": 20000.0,
                "lpf-mode": "off",
                "makeup": 1.0,
                "output-gain": 0.0,
                "reduction": -15.0,
                "release": 200.0,
                "sidechain": {
                    "input": "Internal",
                    "lookahead": 0.0,
                    "mode": "RMS",
                    "preamp": 0.0,
                    "reactivity": 10.0,
                    "source": "Middle",
                    "stereo-split-source": "Left/Right"
                },
                "stereo-split": false,
                "wet": -1.0
            },
            "limiter#0": {
                "alr": false,
                "alr-attack": 5.0,
                "alr-knee": 0.0,
                "alr-release": 50.0,
                "attack": 1.0,
                "bypass": false,
                "dithering": "16bit",
                "external-sidechain": false,
                "gain-boost": true,
                "input-gain": 0.0,
                "lookahead": 5.0,
                "mode": "Herm Wide",
                "output-gain": 0.0,
                "oversampling": "Half x2(2L)",
                "release": 5.0,
                "sidechain-preamp": 0.0,
                "stereo-link": 100.0,
                "threshold": -1.0
            },
            "plugins_order": [
                "rnnoise#0",
                "gate#0",
                "deesser#0",
                "compressor#0",
                "equalizer#0",
                "speex#0",
                "limiter#0"
            ],
            "rnnoise#0": {    "wet": 0.0
    '';
  };
}
