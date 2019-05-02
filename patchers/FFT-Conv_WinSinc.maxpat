{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1384.0, -1190.0, 615.0, 804.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 381.963958740234375, 82.0, 20.0 ],
					"text" : "after"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 196.963958740234375, 82.0, 20.0 ],
					"text" : "before"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 111.0, 66.0, 20.0 ],
					"text" : "saw Freq"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 14.0, 347.0, 87.0 ],
					"text" : "FFT-Convolution\nOverlap-add method\nusing Window-Sinc filter kernel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 311.6185302734375, 35.0, 22.0 ],
					"text" : "fc $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 257.463958740234375, 66.0, 20.0 ],
					"text" : "fc: 0 ~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-38",
					"maxclass" : "flonum",
					"maximum" : 0.5,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 44.0, 279.463958740234375, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_longname" : "number",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 0.5,
							"parameter_initial" : [ 0.5 ],
							"parameter_shortname" : "number"
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 713.0, 179.0, 22.0 ],
					"text" : "buffer~ butterfly_8192samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 684.0, 179.0, 22.0 ],
					"text" : "buffer~ butterfly_4096samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 653.0, 179.0, 22.0 ],
					"text" : "buffer~ butterfly_2048samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 21.0, 133.0, 38.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 3,
							"parameter_mmin" : 10.0,
							"parameter_exponent" : 5.0,
							"parameter_longname" : "live.dial",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 10000.0,
							"parameter_initial" : [ 60.0 ],
							"parameter_shortname" : "number"
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"bufsize" : 253,
					"calccount" : 4,
					"id" : "obj-16",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 218.963958740234375, 464.0, 143.0 ],
					"range" : [ -0.8, 0.8 ],
					"trigger" : 2
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 1166.0, -1651.0, 1309.0, 1526.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"code" : "fft(buf_bitRev, buf_kernel, fftSize, inSig, mCount, buf_REX, buf_IMX){\n\t\t\n\tDelay delayBuf(samplerate*10);\n\tdelayBuf.write(inSig);\n\t\n\tbufDiv2 = fftSize/2;\n\t\n\tif(mCount == 0){\r\n\t\t\r\n\t\t// bitRev\r\n\t\tfor(i=0; i<fftSize; i+=1){\r\n\t\t\tpoke(buf_REX, delayBuf.read(fftSize - peek(buf_bitRev, i, 0)), i, 0);\r\n\t\t\tpoke(buf_IMX, 0, i, 0);\r\n\t\t}\n\t\t\n\t\t// FFT\n\t\tfor(size=2; size<=fftSize; size*=2){\n\t\t\thalfsize = size / 2;\n\t\t\ttablestep = fftSize / size;\n\t\t\tfor(i=0; i<fftSize; i+=size){\n\t\t\t\tk = 0;\n\t\t\t\tfor(j=i; j<i+halfsize; j+=1){\t\t\n\t\t\t\t\tl = j + halfsize;\n\t\t\t\t\ttpre =  peek(buf_REX, l, 0)*peek(buf_bitRev, k, 1) + peek(buf_IMX, l, 0)*peek(buf_bitRev, k, 2);\n\t\t\t\t\ttpim =  -peek(buf_REX, l, 0)*peek(buf_bitRev, k, 2) + peek(buf_IMX, l, 0)*peek(buf_bitRev, k, 1);\n\t\t\t\t\tk = k + tablestep;\n\t\t\t\t\t\n\t\t\t\t\tpoke(buf_REX, (peek(buf_REX, j, 0)-tpre), l, 0);\n\t\t\t\t\tpoke(buf_IMX, (peek(buf_IMX, j, 0)-tpim), l, 0);\n\t\t\t\t\t\n\t\t\t\t\tpoke(buf_REX, (peek(buf_REX, j, 0)+tpre), j, 0);\n\t\t\t\t\tpoke(buf_IMX, (peek(buf_IMX, j, 0)+tpim), j, 0);\n\t\t\t\t}\t\n\t\t\t}\n\t\t}\n\t\t\n\t\t// FFT Convolution\n\t\tfor(i=0; i<bufDiv2; i+=1){\n\t\t\ttpre = peek(buf_REX, i, 0)*peek(buf_kernel, i, 0) - peek(buf_IMX, i, 0)*peek(buf_kernel, i, 1);\n\t\t\ttpim = peek(buf_IMX, i, 0)*peek(buf_kernel, i, 0) + peek(buf_REX, i, 0)*peek(buf_kernel, i, 1);\n\t\t\t\n\t\t\tpoke(buf_REX, tpre, i, 2);\n\t\t\tpoke(buf_IMX, tpim, i, 2);\n\t\t}\n\t\t\n\t\t// manage negative Freq\n\t\tfor(i=bufDiv2+1; i<fftSize; i+=1){\n\t\t\tpoke(buf_REX,  peek(buf_REX, fftSize-i, 2), i, 2);\n\t\t\tpoke(buf_IMX, -peek(buf_IMX, fftSize-i, 2), i, 2);\n\t\t}\n\t\t\t\n\t\t\n\t\t// normalize and bit Rev for IFFT\n\t\tfor(i=0; i<fftSize; i+=1){\n\t\t\tpoke(buf_REX, peek(buf_REX, peek(buf_bitRev, i, 0), 2)/fftSize, i, 1);\n\t\t\tpoke(buf_IMX, peek(buf_IMX, peek(buf_bitRev, i, 0), 2)/fftSize, i, 1);\n\t\t}\n\t\t\n\t\t// IFFT\n\t\tfor(size=2; size<=fftSize; size*=2){\n\t\t\thalfsize = size / 2;\n\t\t\ttablestep = fftSize / size;\n\t\t\tfor(i=0; i<fftSize; i+=size){\n\t\t\t\tk = 0;\n\t\t\t\tfor(j=i; j<i+halfsize; j+=1){\t\t\n\t\t\t\t\tl = j + halfsize;\n\t\t\t\t\ttpre =  peek(buf_REX, l, 1)*peek(buf_bitRev, k, 1) - peek(buf_IMX, l, 1)*peek(buf_bitRev, k, 2);\n\t\t\t\t\ttpim =  peek(buf_REX, l, 1)*peek(buf_bitRev, k, 2) + peek(buf_IMX, l, 1)*peek(buf_bitRev, k, 1);\n\t\t\t\t\tk = k + tablestep;\n\t\t\t\t\t\n\t\t\t\t\tpoke(buf_REX, (peek(buf_REX, j, 1)-tpre), l, 1);\n\t\t\t\t\tpoke(buf_IMX, (peek(buf_IMX, j, 1)-tpim), l, 1);\n\t\t\t\t\t\n\t\t\t\t\tpoke(buf_REX, (peek(buf_REX, j, 1)+tpre), j, 1);\n\t\t\t\t\tpoke(buf_IMX, (peek(buf_IMX, j, 1)+tpim), j, 1);\n\t\t\t\t}\t\n\t\t\t}\n\t\t}\n\t}\n\treturn peek(buf_REX, mCount + (bufDiv2 - 1), 1);\n}\n\nset_winSync(buf_winSync, fc, fftSize, buf_1, buf_2, REX, IMX, wave){\n\t\n\tfftSizeHalf = fftSize/2;\n\tk = 0.25;\n\t\n\tfor(i=0; i<fftSize; i+=1){\n\t\tif(i == fftSize/4){\n\t\t\tval = TWOPI*fc*k;\r\n\t\t\tpoke(wave, val, i, 0);\n\t\t}\n\t\telse if(i<fftSizeHalf){\n\t\t\tval = (0.42 - 0.5*cos(TWOPI*i/fftSizeHalf)+0.08*cos(2*TWOPI*i/fftSizeHalf))*k*sin(TWOPI*fc*(i-fftSizeHalf/2))/(i-fftSizeHalf/2);\r\n\t\t\tpoke(wave, val, i, 0);\n\t\t}\n\t\telse{\n\t\t\tval = 0;\r\n\t\t\tpoke(wave, val, i, 0);\n\t\t}\n\t}\n\t\t\n\t// bit-rev sort\n\tfor(i=0; i<fftSize; i+=1){\n\t\tpoke(REX, peek(wave, peek(buf_2, i, 0), 0), i , 0);\n\t\tpoke(IMX, 0, i, 0);\n\t}\n\t\n\t// FFT\n\tfor(size=2; size<=fftSize; size*=2){\n\t\thalfsize = size / 2;\n\t\ttablestep = fftSize / size;\n\t\tfor(i=0; i<fftSize; i+=size){\n\t\t\tk = 0;\n\t\t\tfor(j=i; j<i+halfsize; j+=1){\t\t\n\t\t\t\tl = j + halfsize;\n\t\t\t\ttpre =  peek(REX, l, 0)*peek(buf_2, k, 1) + peek(IMX, l, 0)*peek(buf_2, k, 2);\n\t\t\t\ttpim =  -peek(REX, l, 0)*peek(buf_2, k, 2) + peek(IMX, l, 0)*peek(buf_2, k, 1);\n\t\t\t\tk = k + fftSize/size;\n\t\t\t\t\n\t\t\t\tpoke(REX, (peek(REX, j, 0)-tpre), l, 0);\n\t\t\t\tpoke(IMX, (peek(IMX, j, 0)-tpim), l, 0);\n\t\t\t\t\n\t\t\t\tpoke(REX, (peek(REX, j, 0)+tpre), j, 0);\n\t\t\t\tpoke(IMX, (peek(IMX, j, 0)+tpim), j, 0);\n\t\t\t}\t\n\t\t}\n\t}\n\t\n\tfor(i=0; i<fftSize; i+=1){\n\t\tpoke(buf_winSync, peek(REX, i, 0), i, 0);\n\t\tpoke(buf_winSync, peek(IMX, i, 0), i, 1);\n\t} \n\t\t\n\treturn 0;\n}\r\n\r\nBuffer buf_256samp(\"butterfly_256samp\");\r\nBuffer buf_512samp(\"butterfly_512samp\");\r\nBuffer buf_1024samp(\"butterfly_1024samp\");\r\nBuffer buf_2048samp(\"butterfly_2048samp\");\r\nBuffer buf_4096samp(\"butterfly_4096samp\");\r\nBuffer buf_8192samp(\"butterfly_8192samp\");\r\n\r\nParam bufSize(256);\r\nParam fc(0);\r\n\r\nData buf_winSync(samplerate*10, 2);\r\nData buf_winSyncWave(samplerate*10, 1);\r\nData buf_winSyncREX(samplerate*10, 1);\r\nData buf_winSyncIMX(samplerate*10, 1);\r\n\r\nData buf_fft_store_1(samplerate*10, 1);\r\nData buf_fft_REX_1(samplerate*10, 3); // 1ch: REX, 2ch: REXinv, 3ch: REXcnv\r\nData buf_fft_IMX_1(samplerate*10, 3); // 1ck: IMX, 2ch: IMXinv, 3ch: IMXcnv\r\n\r\nData buf_fft_store_2(samplerate*10, 1);\r\nData buf_fft_REX_2(samplerate*10, 3); // 1ch: REX, 2ch: REXinv, 3ch: REXcnv\r\nData buf_fft_IMX_2(samplerate*10, 3); // 1ck: IMX, 2ch: IMXinv, 3ch: IMXcnv\r\n\r\n\r\nDelay del_mCount(8196);\r\n\r\n// master clock\r\nmCount_1  = counter(1, 0, bufSize);\r\ndel_mCount.write(mCount_1);\r\nmCount_2 = del_mCount.read(bufSize);\r\n\r\n\r\nfftSize = 2*bufSize;\r\nif(change(fc) != 0){\r\n\tset_winSync(buf_winSync, fc, fftSize, buf_256samp, buf_512samp, buf_winSyncREX, buf_winSyncIMX, buf_winSyncWave);\r\n}\r\n\r\nfft = fft(buf_512samp, buf_winSync, fftSize, in1, mCount_1, buf_fft_REX_1, buf_fft_IMX_1);\r\nout1 = fft;",
									"fontface" : 0,
									"fontname" : "Menlo",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 37.0, 1117.0, 1452.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 6.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 1494.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 21.0, 354.5, 42.0, 24.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 21.0, 661.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 624.0, 179.0, 22.0 ],
					"text" : "buffer~ butterfly_1024samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 593.0, 172.0, 22.0 ],
					"text" : "buffer~ butterfly_512samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 566.0, 172.0, 22.0 ],
					"text" : "buffer~ butterfly_256samp -1 3"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 693.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "js_butterflyIndex.js",
						"parameter_enable" : 0
					}
,
					"text" : "js js_butterflyIndex.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 21.0, 422.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "live.gain~"
						}

					}
,
					"showname" : 0,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 590.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 21.0, 175.0, 37.0, 22.0 ],
					"text" : "saw~"
				}

			}
, 			{
				"box" : 				{
					"bufsize" : 253,
					"calccount" : 4,
					"id" : "obj-4",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 407.5, 464.0, 143.0 ],
					"range" : [ -0.8, 0.8 ],
					"trigger" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 30.5, 208.75, 129.5, 208.75 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 30.5, 574.0, 56.5, 574.0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 53.5, 345.059272766113281, 30.5, 345.059272766113281 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 30.5, 400.0, 129.5, 400.0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-7" : [ "live.dial", "number", 0 ],
			"obj-12" : [ "live.gain~", "live.gain~", 0 ],
			"obj-38" : [ "number", "number", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "js_butterflyIndex.js",
				"bootpath" : "~/Documents/Max 7/Library/patch/FFT-Convolution/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
