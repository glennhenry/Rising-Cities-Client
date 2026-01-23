package net.bigpoint.cityrama.view.emergencyTV.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class NewsComponent extends Group
   {
      
      private var _3141bg:BriskMCDynaLib;
      
      private var _427039519reporter:BriskMCDynaLib;
      
      private var _125094546screen_on:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _newsData:TVShowVo;
      
      private var _dataDirty:Boolean;
      
      private var _reporterLoaded:Boolean;
      
      private var _bgLoaded:Boolean;
      
      private var _professionalLoaded:Boolean;
      
      public function NewsComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               addr001e:
               if(_loc2_ || _loc2_)
               {
                  this.height = 168;
                  if(_loc2_)
                  {
                     addr0057:
                     this.width = 257;
                     if(_loc2_ || _loc1_)
                     {
                        addr006a:
                        this.mxmlContent = [this._NewsComponent_Group2_c()];
                     }
                  }
                  return;
               }
               §§goto(addr006a);
            }
            §§goto(addr0057);
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr004f);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0063);
            }
            addr004f:
            return;
         }
         addr0063:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function loadLibs(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc3_)
         {
            _loc2_.checkSWFArrayLoaded(param1,param1[0].toString());
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(this._dataDirty);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this._dataDirty = false;
                        if(_loc1_)
                        {
                           if(this._newsData)
                           {
                              if(!_loc2_)
                              {
                                 this.loadLibs([this._newsData.backGroundlibName,this._newsData.backGroundlibName]);
                                 if(_loc1_ || _loc2_)
                                 {
                                    this.loadLibs([this._newsData.reporterLib,this._newsData.reporterLib]);
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr0096:
                                       §§push(this._reporterLoaded);
                                       if(!_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§push(this.reporter);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(this._newsData);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(§§pop().reporterSwfName);
                                                      if(_loc1_ || Boolean(this))
                                                      {
                                                         §§pop().dynaSWFName = §§pop();
                                                         if(_loc1_)
                                                         {
                                                            §§push(this.reporter);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(this._newsData);
                                                               if(_loc1_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop().reporterLib);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().dynaLibName = §§pop();
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.reporter);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr0131:
                                                                           §§push(this._newsData.reporterMC);
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              addr0141:
                                                                              §§pop().dynaMCSourceName = §§pop();
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0149:
                                                                                 §§push(this.reporter);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr0158:
                                                                                    §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
                                                                                    addr0152:
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0295:
                                                                                       §§push(this._bgLoaded);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr029e:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc1_ || _loc1_)
                                                                                             {
                                                                                                addr02af:
                                                                                                §§push(this.bg);
                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(this._newsData);
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().swfName);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§pop().dynaSWFName = §§pop();
                                                                                                         if(_loc1_ || _loc2_)
                                                                                                         {
                                                                                                            addr02e9:
                                                                                                            §§push(this.bg);
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(this._newsData);
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  addr030b:
                                                                                                                  §§push(§§pop().backGroundlibName);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§pop().dynaLibName = §§pop();
                                                                                                                     if(_loc1_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(this.bg);
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr032f:
                                                                                                                           addr032b:
                                                                                                                           §§push(this._newsData.backGroundMC);
                                                                                                                           if(_loc1_ || _loc1_)
                                                                                                                           {
                                                                                                                              addr033f:
                                                                                                                              §§pop().dynaMCSourceName = §§pop();
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.bg);
                                                                                                                                 if(_loc1_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr035e:
                                                                                                                                    §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onBGLoadComplete);
                                                                                                                                    addr0358:
                                                                                                                                    if(_loc2_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       addr03d3:
                                                                                                                                       §§push(this.bg);
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          addr03dc:
                                                                                                                                          §§push(§§pop().bitmapClip);
                                                                                                                                          if(!(_loc2_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr03ec:
                                                                                                                                             §§pop().stop();
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                addr03f5:
                                                                                                                                                §§push(this.bg);
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().bitmapClip);
                                                                                                                                                   if(_loc1_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      addr0427:
                                                                                                                                                      §§pop().fps = this._newsData.backGroundFrameRate;
                                                                                                                                                      addr0424:
                                                                                                                                                      if(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr043c:
                                                                                                                                                         this.bg.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
                                                                                                                                                         addr0436:
                                                                                                                                                         addr0433:
                                                                                                                                                         addr042f:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr043f);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0436);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0433);
                                                                                                                                             }
                                                                                                                                             §§goto(addr042f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0436);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0433);
                                                                                                                                    }
                                                                                                                                    §§goto(addr043f);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0388:
                                                                                                                                    §§push(§§pop().bitmapClip);
                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr0398:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          var _temp_26:* = §§pop();
                                                                                                                                          addr039f:
                                                                                                                                          §§push(_temp_26);
                                                                                                                                          if(_temp_26)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr03b0:
                                                                                                                                                §§pop();
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr03c2);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03f5);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr03c2:
                                                                                                                                       addr03be:
                                                                                                                                       if(Boolean(this.visible))
                                                                                                                                       {
                                                                                                                                          if(_loc1_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03d3);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr043f);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr03ec);
                                                                                                                              }
                                                                                                                              §§goto(addr042f);
                                                                                                                           }
                                                                                                                           §§goto(addr035e);
                                                                                                                        }
                                                                                                                        §§goto(addr0358);
                                                                                                                     }
                                                                                                                     §§goto(addr03d3);
                                                                                                                  }
                                                                                                                  §§goto(addr033f);
                                                                                                               }
                                                                                                               §§goto(addr032f);
                                                                                                            }
                                                                                                            §§goto(addr0388);
                                                                                                         }
                                                                                                         §§goto(addr043f);
                                                                                                      }
                                                                                                      §§goto(addr033f);
                                                                                                   }
                                                                                                   §§goto(addr030b);
                                                                                                }
                                                                                                §§goto(addr032b);
                                                                                             }
                                                                                             §§goto(addr03f5);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.bg);
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§goto(addr0388);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03dc);
                                                                                       }
                                                                                       §§goto(addr03b0);
                                                                                    }
                                                                                    §§goto(addr03be);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0179:
                                                                                    §§push(§§pop().bitmapClip);
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          var _temp_33:* = §§pop();
                                                                                          §§push(_temp_33);
                                                                                          §§push(_temp_33);
                                                                                          if(_loc1_ || Boolean(this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                {
                                                                                                   addr01b6:
                                                                                                   §§pop();
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr01bc:
                                                                                                      §§push(Boolean(this.visible));
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr01c5:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               addr01ce:
                                                                                                               §§push(this.reporter);
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  addr01df:
                                                                                                                  §§push(§§pop().bitmapClip);
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §§pop().stop();
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.reporter);
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr01f9:
                                                                                                                           §§push(§§pop().bitmapClip);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this._newsData);
                                                                                                                              if(_loc1_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().reporterFrameRate);
                                                                                                                                 if(_loc1_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop().fps = §§pop();
                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(this.reporter);
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr0245:
                                                                                                                                          §§push(§§pop().bitmapClip);
                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(BitmapClip.PLAYBACK_YOYO);
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                §§pop().playbackMode = §§pop();
                                                                                                                                                if(_loc1_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   addr0274:
                                                                                                                                                   §§push(this.reporter.bitmapClip);
                                                                                                                                                   if(_loc1_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr0284:
                                                                                                                                                      §§pop().play();
                                                                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0295);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02e9);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0436);
                                                                                                                                                }
                                                                                                                                                §§goto(addr043f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr043c);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0398);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0274);
                                                                                                                                    }
                                                                                                                                    §§goto(addr043f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0427);
                                                                                                                              }
                                                                                                                              §§goto(addr0424);
                                                                                                                           }
                                                                                                                           §§goto(addr0284);
                                                                                                                        }
                                                                                                                        §§goto(addr0245);
                                                                                                                     }
                                                                                                                     §§goto(addr043f);
                                                                                                                  }
                                                                                                                  §§goto(addr0284);
                                                                                                               }
                                                                                                               §§goto(addr01f9);
                                                                                                            }
                                                                                                            §§goto(addr02af);
                                                                                                         }
                                                                                                         §§goto(addr0295);
                                                                                                      }
                                                                                                      §§goto(addr03b0);
                                                                                                   }
                                                                                                   §§goto(addr03f5);
                                                                                                }
                                                                                                §§goto(addr03c2);
                                                                                             }
                                                                                             §§goto(addr01c5);
                                                                                          }
                                                                                          §§goto(addr039f);
                                                                                       }
                                                                                       §§goto(addr01c5);
                                                                                    }
                                                                                    §§goto(addr0284);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01ce);
                                                                           }
                                                                           §§goto(addr0158);
                                                                        }
                                                                        §§goto(addr0179);
                                                                     }
                                                                     §§goto(addr01bc);
                                                                  }
                                                                  §§goto(addr0158);
                                                               }
                                                               §§goto(addr0131);
                                                            }
                                                            §§goto(addr0152);
                                                         }
                                                         §§goto(addr01bc);
                                                      }
                                                      §§goto(addr0141);
                                                   }
                                                   §§goto(addr0131);
                                                }
                                                §§goto(addr01f9);
                                             }
                                             §§goto(addr043f);
                                          }
                                          else
                                          {
                                             §§push(this.reporter);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§goto(addr0179);
                                             }
                                          }
                                          §§goto(addr01df);
                                       }
                                       §§goto(addr029e);
                                    }
                                    §§goto(addr0149);
                                 }
                                 §§goto(addr0096);
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr043f);
                        }
                        §§goto(addr0295);
                     }
                     §§goto(addr02e9);
                  }
                  addr043f:
                  return;
               }
               §§goto(addr01b6);
            }
            §§goto(addr0096);
         }
         §§goto(addr0295);
      }
      
      private function onPersonLoadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._reporterLoaded = true;
            if(!(_loc3_ && _loc2_))
            {
               addr002a:
               §§push(this.reporter);
               if(!_loc3_)
               {
                  §§pop().removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
                  if(_loc2_)
                  {
                     §§push(this.reporter);
                     if(_loc2_ || Boolean(this))
                     {
                        addr0056:
                        §§push(§§pop().bitmapClip);
                        if(!_loc3_)
                        {
                           §§pop().stop();
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this.reporter);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008a:
                                 §§push(§§pop().bitmapClip);
                                 if(!_loc3_)
                                 {
                                    addr0092:
                                    §§pop().fps = this._newsData.reporterFrameRate;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00a9:
                                       §§push(this.reporter);
                                       if(_loc2_)
                                       {
                                          addr00b2:
                                          §§push(§§pop().bitmapClip);
                                          if(_loc2_)
                                          {
                                             §§goto(addr00c5);
                                          }
                                          §§goto(addr00e2);
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr00db);
                                 }
                                 addr00c5:
                                 §§pop().playbackMode = BitmapClip.PLAYBACK_YOYO;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00e2:
                                    this.reporter.bitmapClip.play();
                                    addr00df:
                                    addr00db:
                                    if(_loc2_ || Boolean(this))
                                    {
                                       this.checkAllLoaded();
                                    }
                                 }
                                 §§goto(addr00f8);
                              }
                              §§goto(addr00b2);
                           }
                           addr00f8:
                           return;
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0056);
            }
            §§goto(addr00a9);
         }
         §§goto(addr002a);
      }
      
      private function checkAllLoaded() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this._reporterLoaded);
            if(_loc3_)
            {
               §§push(§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr004b);
                     }
                  }
                  §§goto(addr0071);
               }
               addr004b:
               §§pop();
               if(!_loc2_)
               {
                  addr0071:
                  §§push(this._bgLoaded);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0062:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr007a:
                        §§push(this.reporter);
                        §§push(this.bg);
                        var _loc1_:*;
                        this.screen_on.visible = _loc1_ = true;
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           §§push(_loc1_);
                        }
                        §§pop().visible = §§pop();
                        §§pop().visible = _loc1_;
                     }
                  }
               }
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr007a);
      }
      
      private function onBGLoadComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._bgLoaded = true;
            if(_loc3_)
            {
               §§push(this.bg);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
                  if(_loc3_)
                  {
                     addr0052:
                     §§push(this.bg);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop().bitmapClip);
                        if(_loc3_)
                        {
                           §§pop().stop();
                           if(_loc3_)
                           {
                              §§push(this.bg);
                              if(!_loc2_)
                              {
                                 addr007d:
                                 §§push(§§pop().bitmapClip);
                                 if(_loc3_)
                                 {
                                    addr0092:
                                    §§pop().fps = this._newsData.backGroundFrameRate;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§goto(addr00b0);
                                    }
                                    §§goto(addr00be);
                                 }
                                 addr00b0:
                                 this.bg.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
                                 §§goto(addr00ad);
                              }
                              addr00ad:
                              §§goto(addr00a9);
                           }
                           addr00a9:
                           if(_loc3_)
                           {
                              addr00be:
                              this.checkAllLoaded();
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr007d);
            }
            addr00c3:
            return;
         }
         §§goto(addr0052);
      }
      
      public function set newsData(param1:TVShowVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(RandomUtilities.isEqual(param1,this._newsData));
            if(_loc3_ || Boolean(param1))
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     this._dataDirty = true;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr005e:
                        §§push(RandomUtilities.isEqual(param1.backGroundMC,this.bg.dynaMCSourceName));
                        if(_loc3_)
                        {
                           addr0075:
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(this.bg);
                                 §§push(this.bg);
                                 var _loc2_:*;
                                 this.bg.dynaSWFName = _loc2_ = null;
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                 }
                                 §§pop().dynaMCSourceName = §§pop();
                                 §§pop().dynaLibName = _loc2_;
                                 if(_loc3_)
                                 {
                                    addr00b1:
                                    this._bgLoaded = false;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00c3:
                                       addr00d5:
                                       if(!RandomUtilities.isEqual(param1.reporterMC,this.reporter.dynaMCSourceName))
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00e6:
                                             §§push(this.reporter);
                                             §§push(this.reporter);
                                             this.reporter.dynaSWFName = _loc2_ = null;
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                §§push(_loc2_);
                                             }
                                             §§pop().dynaMCSourceName = §§pop();
                                             §§pop().dynaLibName = _loc2_;
                                             if(_loc3_)
                                             {
                                                addr011c:
                                                this._reporterLoaded = false;
                                                if(!_loc4_)
                                                {
                                                   addr0127:
                                                   this._newsData = param1;
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr0139:
                                                      invalidateProperties();
                                                   }
                                                   §§goto(addr013e);
                                                }
                                                §§goto(addr0139);
                                             }
                                             §§goto(addr013e);
                                          }
                                          §§goto(addr011c);
                                       }
                                       §§goto(addr0127);
                                    }
                                    §§goto(addr0139);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr011c);
                  }
                  §§goto(addr005e);
               }
               addr013e:
               return;
            }
            §§goto(addr0075);
         }
         §§goto(addr00e6);
      }
      
      public function stopClips(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.bg);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop().bitmapClip);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr004e:
                           §§pop();
                           if(_loc2_ || _loc3_)
                           {
                              addr005c:
                              §§push(this.reporter);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop().bitmapClip);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       §§goto(addr0083);
                                    }
                                    §§goto(addr008d);
                                 }
                                 §§goto(addr01c2);
                              }
                              §§goto(addr01da);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr008d);
                     }
                     addr0083:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr008d:
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                                 addr0096:
                                 §§push(this.bg);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop().bitmapClip);
                                    if(_loc2_)
                                    {
                                       §§pop().stop();
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00b8:
                                          §§push(this.reporter);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop().bitmapClip);
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr00e3:
                                                §§pop().stop();
                                                if(!(_loc2_ || param1))
                                                {
                                                   addr0154:
                                                   addr0158:
                                                   §§push(this.bg.bitmapClip);
                                                   if(_loc2_)
                                                   {
                                                      addr0160:
                                                      §§push(BitmapClip.PLAYBACK_YOYO);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§pop().playbackMode = §§pop();
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0183:
                                                            §§push(this.reporter);
                                                            if(_loc2_)
                                                            {
                                                               addr018c:
                                                               §§push(§§pop().bitmapClip);
                                                               if(!_loc3_)
                                                               {
                                                                  addr0194:
                                                                  §§pop().stop();
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr01a5:
                                                                     §§push(this.reporter);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(§§pop().bitmapClip);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr01c9:
                                                                           §§pop().fps = this._newsData.reporterFrameRate;
                                                                           addr01c6:
                                                                           addr01c2:
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr01d1:
                                                                              §§push(this.reporter);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr01da:
                                                                                 §§push(§§pop().bitmapClip);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr01e8:
                                                                                    §§pop().playbackMode = BitmapClip.PLAYBACK_YOYO;
                                                                                    addr01e2:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01f7:
                                                                                       this.reporter.bitmapClip.play();
                                                                                       addr01f4:
                                                                                       addr01f0:
                                                                                    }
                                                                                    §§goto(addr01fb);
                                                                                 }
                                                                                 §§goto(addr01f7);
                                                                              }
                                                                              §§goto(addr01f4);
                                                                           }
                                                                           §§goto(addr01fb);
                                                                        }
                                                                        §§goto(addr01f7);
                                                                     }
                                                                     §§goto(addr01da);
                                                                  }
                                                                  §§goto(addr01d1);
                                                               }
                                                               §§goto(addr01e2);
                                                            }
                                                            §§goto(addr01da);
                                                         }
                                                         §§goto(addr01f0);
                                                      }
                                                      §§goto(addr01e8);
                                                   }
                                                   §§goto(addr01e2);
                                                }
                                                §§goto(addr01fb);
                                             }
                                             §§goto(addr0194);
                                          }
                                          §§goto(addr018c);
                                       }
                                       §§goto(addr01f0);
                                    }
                                 }
                                 else
                                 {
                                    addr0101:
                                    §§push(§§pop().bitmapClip);
                                    if(_loc2_)
                                    {
                                       §§pop().stop();
                                       if(!_loc3_)
                                       {
                                          §§push(this.bg);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().bitmapClip);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(this._newsData);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop().backGroundFrameRate);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§pop().fps = §§pop();
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr0154);
                                                      }
                                                      §§goto(addr01a5);
                                                   }
                                                   §§goto(addr01c9);
                                                }
                                                §§goto(addr01c6);
                                             }
                                             §§goto(addr0160);
                                          }
                                          §§goto(addr0158);
                                       }
                                       §§goto(addr01d1);
                                    }
                                 }
                                 §§goto(addr0194);
                              }
                              §§goto(addr0183);
                           }
                           else
                           {
                              §§push(this.bg);
                              if(_loc2_)
                              {
                                 §§goto(addr0101);
                              }
                           }
                           §§goto(addr0158);
                        }
                        §§goto(addr0096);
                     }
                     addr01fb:
                     return;
                  }
                  §§goto(addr004e);
               }
               §§goto(addr00e3);
            }
            §§goto(addr0101);
         }
         §§goto(addr005c);
      }
      
      private function _NewsComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._NewsComponent_BriskImageDynaLib1_c(),this._NewsComponent_BriskImageDynaLib2_c(),this._NewsComponent_BriskMCDynaLib1_i(),this._NewsComponent_Group3_c(),this._NewsComponent_BriskImageDynaLib3_i()];
            if(_loc2_)
            {
               addr0065:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _NewsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_emergency";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "news_frame_bottom";
               if(!_loc2_)
               {
                  §§goto(addr0045);
               }
               §§goto(addr0059);
            }
            addr0045:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0059:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _NewsComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_emergency";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "news_screen";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.left = 8;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 20;
                     §§goto(addr0065);
                  }
                  §§goto(addr0085);
               }
               addr0065:
               if(_loc2_ || _loc3_)
               {
                  addr0085:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009d);
            }
         }
         addr009d:
         return _loc1_;
      }
      
      private function _NewsComponent_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.left = 8;
            if(_loc2_)
            {
               §§goto(addr0029);
            }
            §§goto(addr008b);
         }
         addr0029:
         _loc1_.visible = false;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.bottom = 20;
            if(_loc2_ || _loc2_)
            {
               _loc1_.createBitmapClip = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr006c);
               }
               §§goto(addr00bb);
            }
            §§goto(addr008b);
         }
         addr006c:
         _loc1_.id = "bg";
         if(!(_loc3_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr008b:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00a9:
                     this.bg = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00bb:
                        BindingManager.executeBindings(this,"bg",this.bg);
                     }
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00bb);
            }
            §§goto(addr00a9);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _NewsComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = 20;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr003f:
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._NewsComponent_BriskMCDynaLib2_i()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0081);
         }
         §§goto(addr003f);
      }
      
      private function _NewsComponent_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.left = 8;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.createBitmapClip = true;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "reporter";
                     if(_loc3_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008d:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0096:
                                 this.reporter = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"reporter",this.reporter);
                                 }
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0096);
                     }
                     addr00ad:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00a0);
            }
            §§goto(addr006f);
         }
         §§goto(addr008d);
      }
      
      private function _NewsComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_emergency";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "news_screen_lines";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0053:
                  _loc1_.left = 8;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        addr0066:
                        _loc1_.bottom = 20;
                        if(!_loc2_)
                        {
                           _loc1_.id = "screen_on";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr0096:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr009f:
                                       this.screen_on = _loc1_;
                                       if(_loc3_)
                                       {
                                          BindingManager.executeBindings(this,"screen_on",this.screen_on);
                                       }
                                    }
                                    §§goto(addr00b6);
                                 }
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     addr00b6:
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0096);
            }
            §§goto(addr0053);
         }
         §§goto(addr0096);
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : BriskMCDynaLib
      {
         return this._3141bg;
      }
      
      public function set bg(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3141bg;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr004c:
                  this._3141bg = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get reporter() : BriskMCDynaLib
      {
         return this._427039519reporter;
      }
      
      public function set reporter(param1:BriskMCDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._427039519reporter;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._427039519reporter = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006b);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reporter",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen_on() : BriskImageDynaLib
      {
         return this._125094546screen_on;
      }
      
      public function set screen_on(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._125094546screen_on;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004a:
                  this._125094546screen_on = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen_on",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0054);
            }
            addr0072:
            return;
         }
         §§goto(addr004a);
      }
   }
}

