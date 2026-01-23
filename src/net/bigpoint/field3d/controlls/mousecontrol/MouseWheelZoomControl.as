package net.bigpoint.field3d.controlls.mousecontrol
{
   import as3isolib.display.IsoView;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MouseWheelZoomControl extends Proxy
   {
      
      private var _isoView:IsoView;
      
      private var _active:Boolean = false;
      
      private var _zoomSmoothTime:Number = 0.3;
      
      private var _mouseWheelMultiplier:Number = 100;
      
      private var _enableBetterPerformance:Boolean;
      
      private var _zoomStepArray:Array;
      
      private var _currentZoomPointer:int = 1;
      
      private var _zoomValue:Number = 1;
      
      private var _background:Sprite;
      
      private var _defaultStageX:Number;
      
      private var _defaultStageY:Number;
      
      private var _optionsProxy:OptionsMenuProxy;
      
      private var _popUpProxy:PopupProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function MouseWheelZoomControl(param1:IsoView, param2:Sprite)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this._zoomStepArray = [0.7,1];
            if(_loc4_ || _loc3_)
            {
               super();
               if(_loc4_)
               {
                  this._optionsProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
                  if(_loc4_ || Boolean(this))
                  {
                     this._popUpProxy = facade.retrieveProxy(PopupProxy.NAME) as PopupProxy;
                     if(!(_loc3_ && Boolean(param2)))
                     {
                        this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                        if(_loc4_ || _loc3_)
                        {
                           this._background = param2;
                           if(_loc4_)
                           {
                              addr00c0:
                              this._isoView = param1;
                              if(!_loc3_)
                              {
                                 this._defaultStageX = FieldViewPortMediator.FIELD_MIN_SIZE.width;
                                 if(!_loc3_)
                                 {
                                    addr00dc:
                                    this._defaultStageY = FieldViewPortMediator.FIELD_MIN_SIZE.height;
                                    if(!_loc3_)
                                    {
                                       addr00ee:
                                       this.active = true;
                                    }
                                    §§goto(addr00f3);
                                 }
                              }
                              §§goto(addr00ee);
                           }
                        }
                     }
                     addr00f3:
                     return;
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr00c0);
            }
         }
         §§goto(addr00dc);
      }
      
      private function wheel(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1.delta > 0)
            {
               if(_loc3_)
               {
                  addr003b:
                  this.zoomIn(true);
                  if(_loc3_)
                  {
                     addr0047:
                     if(param1.delta < 0)
                     {
                        if(!_loc2_)
                        {
                           addr0057:
                           this.zoomOut(true);
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0057);
               }
               addr005e:
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr003b);
      }
      
      public function adjustField() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!(_loc7_ && _loc3_))
         {
            §§push(this._isoView);
            if(_loc8_)
            {
               if(§§pop().stage == null)
               {
                  if(_loc8_)
                  {
                     §§goto(addr003c);
                  }
               }
               §§push(this._isoView);
            }
            §§push(§§pop().stage.stageWidth * 0.5);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() / this._isoView.currentZoom);
               if(_loc8_ || Boolean(this))
               {
                  §§push(§§pop());
               }
            }
            var _loc1_:* = §§pop();
            §§push(this._isoView.stage.stageHeight * 0.5);
            if(_loc8_ || _loc1_)
            {
               §§push(§§pop() / this._isoView.currentZoom);
               if(_loc8_)
               {
                  addr0099:
                  §§push(§§pop());
               }
               var _loc2_:* = §§pop();
               §§push(HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId));
               if(!(_loc7_ && Boolean(this)))
               {
                  §§push(§§pop());
               }
               var _loc3_:* = §§pop();
               §§push(HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId));
               if(!(_loc7_ && Boolean(this)))
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               §§push(HorizionSettingsVo.minPositionX(this._playfieldProxy.config.gfxId));
               if(_loc8_)
               {
                  §§push(§§pop());
               }
               var _loc5_:* = §§pop();
               §§push(HorizionSettingsVo.minPositionY(this._playfieldProxy.config.gfxId));
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               var _loc6_:* = §§pop();
               if(!(_loc7_ && _loc1_))
               {
                  §§push(this._isoView);
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(§§pop().currentX);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc8_)
                           {
                              §§push(_loc5_);
                              if(_loc8_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc7_ && _loc1_))
                                    {
                                       §§push(this._isoView);
                                       if(!_loc7_)
                                       {
                                          addr0173:
                                          §§push(_loc5_);
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             §§push(_loc1_);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc7_ && Boolean(this)))
                                                {
                                                   §§push(this._isoView);
                                                   if(_loc8_ || _loc1_)
                                                   {
                                                      §§push(§§pop().currentY);
                                                      if(_loc8_)
                                                      {
                                                         §§pop().panTo(§§pop(),§§pop());
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr01c6:
                                                            §§push(this._isoView);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§§pop().currentX);
                                                               if(_loc8_)
                                                               {
                                                                  addr01ed:
                                                                  §§push(_loc1_);
                                                                  if(!(_loc7_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc8_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(this._isoView);
                                                                                       if(!(_loc7_ && Boolean(this)))
                                                                                       {
                                                                                          addr0245:
                                                                                          §§push(_loc5_);
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr0285:
                                                                                                         §§push(this._isoView.currentY);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§pop().panTo(§§pop(),§§pop());
                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                            {
                                                                                                               addr02a0:
                                                                                                               §§push(this._isoView);
                                                                                                               if(!(_loc7_ && _loc2_))
                                                                                                               {
                                                                                                                  addr02b2:
                                                                                                                  §§push(§§pop().currentY);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr02c2:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr02d1:
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr02d9:
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc8_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr02eb:
                                                                                                                                    §§push(this._isoView);
                                                                                                                                    if(_loc8_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       addr02fd:
                                                                                                                                       §§push(this._isoView);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().currentX);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addr0310:
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(!(_loc7_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0320:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc7_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§pop().panTo(§§pop(),§§pop());
                                                                                                                                                      if(_loc8_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr0348:
                                                                                                                                                         §§push(this._isoView);
                                                                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr035a);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0399);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0395);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03a8);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03b8);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03b9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03a0);
                                                                                                                                       }
                                                                                                                                       §§goto(addr039d);
                                                                                                                                    }
                                                                                                                                    addr035a:
                                                                                                                                    §§push(§§pop().currentY);
                                                                                                                                    if(_loc8_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr036b:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0373);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0388);
                                                                                                                                    }
                                                                                                                                    addr0373:
                                                                                                                                    addr0372:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr0388:
                                                                                                                                       addr038a:
                                                                                                                                       §§push(§§pop() + _loc4_);
                                                                                                                                    }
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr0399:
                                                                                                                                          addr0395:
                                                                                                                                          addr03a0:
                                                                                                                                          addr039d:
                                                                                                                                          §§push(this._isoView);
                                                                                                                                          §§push(this._isoView.currentX);
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             addr03a8:
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr03b9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03b8);
                                                                                                                                          }
                                                                                                                                          addr03b9:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr03b8:
                                                                                                                                             §§push(§§pop() - _loc2_);
                                                                                                                                          }
                                                                                                                                          §§pop().panTo(§§pop(),§§pop());
                                                                                                                                          §§goto(addr03bd);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr03bd);
                                                                                                                              }
                                                                                                                              §§goto(addr0348);
                                                                                                                           }
                                                                                                                           §§goto(addr0388);
                                                                                                                        }
                                                                                                                        §§goto(addr036b);
                                                                                                                     }
                                                                                                                     §§goto(addr0372);
                                                                                                                  }
                                                                                                                  §§goto(addr0373);
                                                                                                               }
                                                                                                               §§goto(addr035a);
                                                                                                            }
                                                                                                            §§goto(addr02eb);
                                                                                                         }
                                                                                                         §§goto(addr03b9);
                                                                                                      }
                                                                                                      §§goto(addr0310);
                                                                                                   }
                                                                                                   §§goto(addr03a8);
                                                                                                }
                                                                                                §§goto(addr03a0);
                                                                                             }
                                                                                             §§goto(addr0320);
                                                                                          }
                                                                                          §§goto(addr0310);
                                                                                       }
                                                                                       §§goto(addr02b2);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02a0);
                                                                              }
                                                                              §§goto(addr02d9);
                                                                           }
                                                                           §§goto(addr038a);
                                                                        }
                                                                        §§goto(addr0372);
                                                                     }
                                                                     §§goto(addr02d1);
                                                                  }
                                                                  §§goto(addr0388);
                                                               }
                                                               §§goto(addr036b);
                                                            }
                                                            §§goto(addr0245);
                                                         }
                                                         §§goto(addr02eb);
                                                      }
                                                      §§goto(addr0320);
                                                   }
                                                   §§goto(addr0285);
                                                }
                                                §§goto(addr0310);
                                             }
                                             §§goto(addr03a8);
                                          }
                                          §§goto(addr0310);
                                       }
                                       §§goto(addr02fd);
                                    }
                                    §§goto(addr0395);
                                 }
                                 §§goto(addr01c6);
                              }
                              §§goto(addr02d9);
                           }
                           §§goto(addr036b);
                        }
                        §§goto(addr02c2);
                     }
                     §§goto(addr01ed);
                  }
                  §§goto(addr0173);
               }
               addr03bd:
               return;
            }
            §§goto(addr0099);
         }
         addr003c:
      }
      
      public function zoomIn(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            if(!this._popUpProxy.isPopupOpen)
            {
               if(_loc5_)
               {
                  if(this._currentZoomPointer < this._zoomStepArray.length - 1)
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        var _loc2_:* = this;
                        §§push(_loc2_._currentZoomPointer);
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc2_._currentZoomPointer = _loc3_;
                        }
                        if(_loc5_)
                        {
                           this._zoomValue = this._zoomStepArray[this._currentZoomPointer];
                           addr0077:
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§push(this._isoView);
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop().currentZoom != this._zoomValue)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr00ca:
                                       this._isoView.currentZoom = this._zoomValue;
                                       addr00c6:
                                       if(_loc5_ || param1)
                                       {
                                          this.adjustField();
                                          if(_loc5_ || param1)
                                          {
                                             addr00fd:
                                             this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_ZOOM,false);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr011a:
                                                facade.sendNotification(ApplicationNotificationConstants.FIELD_ZOOMED,param1);
                                             }
                                             §§goto(addr0125);
                                          }
                                       }
                                       §§goto(addr011a);
                                    }
                                 }
                                 §§goto(addr0125);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr011a);
                  }
                  §§goto(addr0125);
               }
               §§goto(addr00c6);
            }
            addr0125:
            return;
         }
         §§goto(addr0077);
      }
      
      public function zoomOut(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            if(!this._popUpProxy.isPopupOpen)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(this._currentZoomPointer > 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        var _loc2_:* = this;
                        §§push(_loc2_._currentZoomPointer);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc2_._currentZoomPointer = _loc3_;
                        }
                        if(!_loc4_)
                        {
                           this._zoomValue = this._zoomStepArray[this._currentZoomPointer];
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              addr00a2:
                              §§push(this._isoView);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 if(§§pop().currentZoom != this._zoomValue)
                                 {
                                    if(_loc5_)
                                    {
                                       addr00c9:
                                       this._isoView.currentZoom = this._zoomValue;
                                       addr00c5:
                                       if(_loc5_ || Boolean(this))
                                       {
                                          addr00ec:
                                          this.adjustField();
                                          if(_loc5_)
                                          {
                                             this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_ZOOM,true);
                                             if(_loc5_)
                                             {
                                                addr010c:
                                                facade.sendNotification(ApplicationNotificationConstants.FIELD_ZOOMED,param1);
                                             }
                                          }
                                       }
                                       §§goto(addr0117);
                                    }
                                    §§goto(addr010c);
                                 }
                                 §§goto(addr0117);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr0117);
               }
               §§goto(addr00ec);
            }
            addr0117:
            return;
         }
         §§goto(addr010c);
      }
      
      public function toggleBetterPerformance(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._enableBetterPerformance = param1;
         }
      }
      
      public function destroy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.active = false;
         }
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._active);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc2_ || _loc3_)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0055:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this._isoView);
                                          if(_loc2_ || param1)
                                          {
                                             §§pop().addEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
                                             if(_loc2_ || _loc2_)
                                             {
                                                this._background.addEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
                                                if(_loc3_)
                                                {
                                                }
                                                addr0152:
                                                this._active = param1;
                                             }
                                             else
                                             {
                                                addr0135:
                                                this._background.removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§goto(addr0152);
                                                }
                                             }
                                             §§goto(addr0157);
                                          }
                                          else
                                          {
                                             addr0110:
                                             §§pop().removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheel);
                                             if(_loc2_ || Boolean(this))
                                             {
                                                §§goto(addr0135);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(this._active);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00be:
                                          §§push(§§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr00cc:
                                             var _temp_10:* = §§pop();
                                             addr00cd:
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00de:
                                                   §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr00fb:
                                                      addr00ec:
                                                      §§push(param1);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            addr010c:
                                                            §§goto(addr0110);
                                                            §§push(this._isoView);
                                                         }
                                                         §§goto(addr0135);
                                                      }
                                                      §§goto(addr0152);
                                                   }
                                                   §§goto(addr010c);
                                                }
                                             }
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr00de);
                                       }
                                       §§goto(addr00fb);
                                    }
                                    §§goto(addr0152);
                                 }
                                 §§goto(addr00fb);
                              }
                              §§goto(addr00be);
                           }
                           addr0157:
                           return;
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr0055);
                  }
                  §§goto(addr00cd);
               }
            }
            §§goto(addr00cc);
         }
         §§goto(addr00ec);
      }
      
      public function set zoomSmoothTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._zoomSmoothTime = param1;
         }
      }
      
      public function get mouseWheelMultiplier() : Number
      {
         return this._mouseWheelMultiplier;
      }
      
      public function set mouseWheelMultiplier(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._mouseWheelMultiplier = param1;
         }
      }
   }
}

