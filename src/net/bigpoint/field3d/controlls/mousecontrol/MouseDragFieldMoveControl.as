package net.bigpoint.field3d.controlls.mousecontrol
{
   import as3isolib.display.IsoView;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   import spark.components.Group;
   
   public class MouseDragFieldMoveControl extends Proxy
   {
      
      private const SKIP_EVENT_AMOUNT:int = 10;
      
      private var _isoView:IsoView;
      
      private var _active:Boolean = false;
      
      private var _isDragging:Boolean = false;
      
      private var _tolerancePoint:Point;
      
      private var _skipEventFactor:int = 0;
      
      private var _enableBetterPerformance:Boolean;
      
      private var _panPt:Pt;
      
      private var _flexLayer:Group;
      
      private var _background:Sprite;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function MouseDragFieldMoveControl(param1:IsoView, param2:Sprite)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(_loc4_)
            {
               this._background = param2;
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._isoView = param1;
                  if(_loc4_)
                  {
                     addr0059:
                     this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                     if(_loc4_ || Boolean(param1))
                     {
                        addr0079:
                        this.active = true;
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0079);
               }
               addr007e:
               return;
            }
         }
         §§goto(addr0059);
      }
      
      private function get horizonProxy() : HorizonProxy
      {
         return facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
      }
      
      private function onMouseDownHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._tolerancePoint = new Point(param1.stageX,param1.stageY);
            if(_loc3_ || Boolean(this))
            {
               this._panPt = new Pt(this._tolerancePoint.x,this._tolerancePoint.y);
               if(!_loc2_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
                  if(_loc3_)
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr009d);
               }
               addr0068:
               if(this._active)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     this._isDragging = true;
                     if(_loc3_ || _loc3_)
                     {
                        addr009d:
                        this._background.stage.addEventListener(MouseEvent.MOUSE_UP,this.OnGlobalUP);
                        if(_loc3_ || Boolean(param1))
                        {
                           addr00be:
                           this._background.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr00db);
                           }
                           §§goto(addr011f);
                        }
                        addr00db:
                        this._background.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                        if(_loc3_)
                        {
                           §§push(this._isoView);
                           if(_loc3_)
                           {
                              §§pop().addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0123:
                                 this._isoView.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                                 addr011f:
                              }
                              §§goto(addr012f);
                           }
                           §§goto(addr0123);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr00be);
               }
               addr012f:
               return;
            }
            §§goto(addr00be);
         }
         §§goto(addr011f);
      }
      
      private function onMouseMoveHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:Pt = null;
         if(!(_loc9_ && _loc2_))
         {
            facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
            if(_loc8_ || _loc2_)
            {
               if(this._enableBetterPerformance)
               {
                  if(!_loc9_)
                  {
                     var _loc6_:* = this;
                     §§push(_loc6_._skipEventFactor);
                     if(_loc8_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc7_:* = §§pop();
                     if(_loc8_)
                     {
                        _loc6_._skipEventFactor = _loc7_;
                     }
                     if(_loc8_)
                     {
                        if(this._skipEventFactor >= 0)
                        {
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              §§goto(addr008e);
                           }
                        }
                        else
                        {
                           addr009d:
                           this._skipEventFactor = this.SKIP_EVENT_AMOUNT;
                        }
                        addr00a6:
                        var _loc2_:Point = new Point(Math.abs(param1.stageX),Math.abs(param1.stageY));
                        §§push(this._panPt.x - _loc2_.x);
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           §§push(§§pop());
                        }
                        var _loc3_:* = §§pop();
                        §§push(this._panPt.y - _loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(_loc8_)
                        {
                           if(Point.distance(this._tolerancePoint,_loc2_) > 30)
                           {
                              addr0113:
                              §§push(§§findproperty(Pt));
                              §§push(this._isoView.currentX);
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr0140);
                              }
                              addr0133:
                              §§push(§§pop() + §§pop());
                              §§push(this._isoView.currentY);
                              if(!_loc9_)
                              {
                                 addr0140:
                                 §§push(§§pop() + _loc4_);
                              }
                              _loc5_ = new §§pop().Pt(§§pop(),§§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 this.showPosition(_loc5_);
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    §§push(this._panPt);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§pop().x = Math.abs(_loc2_.x);
                                       if(_loc8_)
                                       {
                                          addr01a3:
                                          this._panPt.y = Math.abs(_loc2_.y);
                                          addr019f:
                                       }
                                       §§goto(addr01ae);
                                    }
                                    §§goto(addr01a3);
                                 }
                                 §§goto(addr019f);
                              }
                              §§goto(addr01ae);
                           }
                           addr01ae:
                           return;
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00a6);
            }
         }
         addr008e:
      }
      
      public function clampPositionToPlayfield(param1:Pt) : Pt
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(_loc9_ || Boolean(param1))
         {
            §§push(this._isoView);
            if(_loc9_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(!_loc8_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr0049);
                     }
                  }
                  §§goto(addr0067);
               }
               addr0049:
               §§pop();
               if(_loc9_ || _loc3_)
               {
                  §§push(this._isoView);
                  if(!_loc8_)
                  {
                     addr0067:
                     addr0062:
                     if(§§pop().stage == null)
                     {
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§goto(addr0079);
                        }
                     }
                     §§push(this._isoView);
                  }
                  §§push(§§pop().stage.stageWidth * 0.5);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(§§pop() / this._isoView.currentZoom);
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                  }
                  var _loc2_:* = §§pop();
                  §§push(this._isoView.stage.stageHeight * 0.5);
                  if(!_loc8_)
                  {
                     §§push(§§pop() / this._isoView.currentZoom);
                     if(!_loc8_)
                     {
                        addr00c7:
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     §§push(HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId));
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     §§push(HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId));
                     if(!(_loc8_ && Boolean(this)))
                     {
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     §§push(HorizionSettingsVo.minPositionX(this._playfieldProxy.config.gfxId));
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                     }
                     var _loc6_:* = §§pop();
                     §§push(HorizionSettingsVo.minPositionY(this._playfieldProxy.config.gfxId));
                     if(_loc9_ || _loc2_)
                     {
                        §§push(§§pop());
                     }
                     var _loc7_:* = §§pop();
                     if(_loc9_)
                     {
                        §§push(param1.x - _loc2_);
                        if(_loc9_)
                        {
                           §§push(_loc6_);
                           if(_loc9_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(param1);
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + _loc2_);
                                    }
                                    §§pop().x = §§pop();
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       addr0192:
                                       if(param1.x + _loc2_ > _loc6_ + _loc4_)
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             addr01ae:
                                             §§push(param1);
                                             §§push(_loc6_);
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                §§push(_loc4_);
                                                if(!_loc8_)
                                                {
                                                   addr01d8:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      addr01d7:
                                                      §§push(§§pop() - _loc2_);
                                                   }
                                                   §§pop().x = §§pop();
                                                   if(!(_loc8_ && Boolean(param1)))
                                                   {
                                                      addr01e8:
                                                      addr01ef:
                                                      addr01ed:
                                                      if(param1.y - _loc3_ < _loc7_)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr0201:
                                                            §§push(param1);
                                                            §§push(_loc7_);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() + _loc3_);
                                                            }
                                                            §§pop().y = §§pop();
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               addr021c:
                                                               if(param1.y + _loc3_ > _loc7_ + _loc5_)
                                                               {
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     addr0243:
                                                                     §§push(param1);
                                                                     §§push(_loc7_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc8_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              addr0264:
                                                                              addr0263:
                                                                              §§push(§§pop() - _loc3_);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr0267);
                                                                        }
                                                                        §§goto(addr0264);
                                                                     }
                                                                     §§goto(addr0263);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr0267:
                                                         return param1;
                                                      }
                                                   }
                                                   §§goto(addr021c);
                                                }
                                                §§goto(addr01d7);
                                             }
                                             §§goto(addr01d8);
                                          }
                                       }
                                       §§goto(addr01e8);
                                    }
                                    §§goto(addr0201);
                                 }
                                 §§goto(addr01ae);
                              }
                              §§goto(addr0192);
                           }
                           §§goto(addr01ef);
                        }
                        §§goto(addr01ed);
                     }
                     §§goto(addr0243);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0079);
            }
            §§goto(addr0062);
         }
         addr0079:
         return param1;
      }
      
      public function showPosition(param1:Pt) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            §§push(this._isoView);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop() == null);
               if(!_loc4_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr005a:
                           addr0055:
                           addr0051:
                           if(this._isoView.stage == null)
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                           }
                        }
                        var _loc2_:Pt = this.clampPositionToPlayfield(param1);
                        if(!_loc4_)
                        {
                           this._isoView.panTo(_loc2_.x,_loc2_.y);
                        }
                        var _loc3_:Point = IsoMath.isoToScreen(new Pt(0,0,0));
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           this._flexLayer.x = -this._isoView.currentX * this._isoView.currentZoom + _loc3_.x + this._isoView.stage.stageWidth / 2;
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              this._flexLayer.y = -this._isoView.currentY * this._isoView.currentZoom + _loc3_.y + this._isoView.stage.stageHeight / 2;
                              if(_loc5_)
                              {
                                 this.horizonProxy.updatePosition(this._flexLayer.x,this._flexLayer.y,this._isoView.currentZoom);
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr005a);
            }
            §§goto(addr0055);
         }
         §§goto(addr0051);
      }
      
      private function OnGlobalUP(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._isDragging = false;
            if(_loc2_ || _loc3_)
            {
               this._background.stage.removeEventListener(MouseEvent.MOUSE_UP,this.OnGlobalUP);
               if(_loc2_)
               {
                  §§push(this._isoView);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop().removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                     if(_loc2_ || _loc3_)
                     {
                        addr0080:
                        this._isoView.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00a6:
                           this._background.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                           if(_loc2_ || _loc3_)
                           {
                              addr00c3:
                              this._background.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr0080);
               }
               §§goto(addr00c3);
            }
         }
         §§goto(addr00a6);
      }
      
      private function onMouseUpHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isDragging = false;
            if(_loc3_)
            {
               §§push(this._isoView);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005d:
                     this._isoView.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                     addr0059:
                     if(!(_loc2_ && _loc2_))
                     {
                        this._background.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMoveHandler);
                        §§goto(addr0076);
                     }
                     §§goto(addr0097);
                  }
                  addr0076:
                  if(_loc3_)
                  {
                     addr0097:
                     this._background.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpHandler);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.FIELD_RESET);
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr005d);
            }
            addr00be:
            return;
         }
         §§goto(addr0059);
      }
      
      public function destroy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
               if(!(_loc3_ && Boolean(this)))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc2_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    §§goto(addr006f);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr006f);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00fb);
                     }
                     addr006f:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(this._isoView);
                           if(!_loc3_)
                           {
                              §§pop().addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a4:
                                 this._background.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                                 if(_loc3_ && _loc2_)
                                 {
                                    this._isoView.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                                    addr0110:
                                    addr010c:
                                    if(!(_loc3_ && param1))
                                    {
                                       addr0134:
                                       this._background.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownHandler);
                                       if(!_loc3_)
                                       {
                                          addr0149:
                                          this._active = param1;
                                       }
                                       §§goto(addr014e);
                                    }
                                 }
                                 §§goto(addr0149);
                              }
                              §§goto(addr014e);
                           }
                           §§goto(addr0110);
                        }
                        else
                        {
                           addr00f4:
                           addr00fb:
                           §§push(param1);
                           if(_loc2_)
                           {
                              addr00fa:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || param1)
                              {
                                 §§goto(addr010c);
                              }
                              §§goto(addr014e);
                           }
                        }
                        §§goto(addr0149);
                     }
                     else
                     {
                        §§push(this._active);
                        if(_loc2_)
                        {
                           addr00ce:
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              addr00d4:
                              var _temp_11:* = §§pop();
                              addr00d5:
                              §§push(_temp_11);
                              if(_temp_11)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00e6);
                                 }
                              }
                              §§goto(addr00fb);
                           }
                        }
                        addr00e6:
                        §§pop();
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr00f4);
                        }
                        §§goto(addr014e);
                     }
                     return;
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr00fa);
            }
            §§goto(addr00d4);
         }
         §§goto(addr0134);
      }
      
      public function toggleBetterPerformance(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._enableBetterPerformance = param1;
         }
      }
      
      public function set flexLayer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._flexLayer = param1;
         }
      }
   }
}

