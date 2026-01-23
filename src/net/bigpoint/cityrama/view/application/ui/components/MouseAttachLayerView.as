package net.bigpoint.cityrama.view.application.ui.components
{
   import com.greensock.TweenMax;
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
   import mx.core.FlexGlobals;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   
   public class MouseAttachLayerView extends Group
   {
      
      private static const MAX_ITEMS:uint = 35;
      
      private static const POSITION_THRESHOLD:uint = 20;
      
      private static const LIFETIME:Number = 0.2;
      
      private static const START_ALPHA:Number = 0.5;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         MAX_ITEMS = 35;
         if(_loc2_)
         {
            POSITION_THRESHOLD = 20;
            if(_loc2_ || _loc1_)
            {
               LIFETIME = 0.2;
               if(!(_loc1_ && _loc1_))
               {
                  addr0057:
                  START_ALPHA = 0.5;
               }
               §§goto(addr005f);
            }
            §§goto(addr0057);
         }
      }
      addr005f:
      
      private var _1811405775iconToMouse:BriskImageDynaLib;
      
      private var _586353301mouseTail:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _play:Boolean;
      
      private var _oldPos:Point;
      
      private var _tint:uint;
      
      public function MouseAttachLayerView()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._oldPos = new Point();
            if(!_loc2_)
            {
               super();
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr004f);
               }
               §§goto(addr0069);
            }
         }
         addr004f:
         mx_internal::_document = this;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0069:
            this.mxmlContent = [this._MouseAttachLayerView_SpriteVisualElement1_i(),this._MouseAttachLayerView_BriskImageDynaLib1_i()];
         }
      }
      
      private static function completeMove(param1:Sprite) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.visible = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(param1)
               {
                  if(_loc2_ || param1)
                  {
                     if(!FlexGlobals.topLevelApplication.stage.hasEventListener(MouseEvent.MOUSE_MOVE))
                     {
                        if(!_loc3_)
                        {
                           addr0061:
                           FlexGlobals.topLevelApplication.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler,false);
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr00ba:
                           FlexGlobals.topLevelApplication.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler);
                        }
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0061);
               }
               else if(FlexGlobals.topLevelApplication.stage.hasEventListener(MouseEvent.MOUSE_MOVE))
               {
                  if(_loc2_ || param1)
                  {
                     §§goto(addr00ba);
                  }
               }
               addr00d1:
               return;
            }
            §§goto(addr0061);
         }
         §§goto(addr00ba);
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Bitmap = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Sprite = null;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(Boolean(FlexGlobals.topLevelApplication.stage));
            if(!(_loc6_ && Boolean(this)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc5_ || Boolean(param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(this.visible);
                           if(_loc5_)
                           {
                              §§goto(addr007b);
                           }
                           §§goto(addr0213);
                        }
                        §§goto(addr0191);
                     }
                     §§goto(addr010f);
                  }
                  addr007b:
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(this._oldPos.x == FlexGlobals.topLevelApplication.stage.mouseX);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              §§push(_temp_7);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       addr00cf:
                                       §§pop();
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          §§push(this._oldPos.y == FlexGlobals.topLevelApplication.stage.mouseY);
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr010f);
                                             }
                                             §§goto(addr01d7);
                                          }
                                          §§goto(addr010f);
                                       }
                                       §§goto(addr0177);
                                    }
                                    §§goto(addr024c);
                                 }
                                 addr010f:
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.iconToMouse);
                                       if(!_loc6_)
                                       {
                                          §§pop().x = Math.min(FlexGlobals.topLevelApplication.stage.mouseX,this.width - this.iconToMouse.width);
                                          if(_loc5_)
                                          {
                                             §§push(this.iconToMouse);
                                             if(!_loc6_)
                                             {
                                                §§pop().y = Math.min(FlexGlobals.topLevelApplication.stage.mouseY,this.height - this.iconToMouse.height);
                                                if(_loc5_)
                                                {
                                                   addr0177:
                                                   §§push(this.iconToMouse);
                                                   if(!_loc6_)
                                                   {
                                                      addr0181:
                                                      var _temp_13:* = §§pop().numChildren;
                                                      §§push(_temp_13);
                                                      if(_temp_13)
                                                      {
                                                         §§pop();
                                                         if(_loc5_)
                                                         {
                                                            addr0191:
                                                            §§push(this.mouseTail.numChildren < MAX_ITEMS);
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               addr01b6:
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  var _temp_15:* = §§pop();
                                                                  §§push(_temp_15);
                                                                  §§push(_temp_15);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr01c5:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           addr01d7:
                                                                           §§pop();
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              addr01e6:
                                                                              §§push(Math.abs(this._oldPos.x - this.iconToMouse.x) < POSITION_THRESHOLD);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr0203:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc6_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr0213:
                                                                                    var _temp_19:* = §§pop();
                                                                                    addr0214:
                                                                                    §§push(_temp_19);
                                                                                    if(_temp_19)
                                                                                    {
                                                                                       if(_loc5_ || Boolean(this))
                                                                                       {
                                                                                          §§goto(addr0226);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr024c);
                                                                                 }
                                                                                 addr0226:
                                                                                 §§pop();
                                                                                 if(!(_loc6_ && Boolean(this)))
                                                                                 {
                                                                                    addr024c:
                                                                                    if(Math.abs(this._oldPos.y - this.iconToMouse.y) < POSITION_THRESHOLD)
                                                                                    {
                                                                                       if(_loc5_ || Boolean(param1))
                                                                                       {
                                                                                          addr0262:
                                                                                          _loc2_ = this.iconToMouse.getChildAt(0) as Bitmap;
                                                                                          _loc3_ = _loc2_.bitmapData.clone();
                                                                                          _loc4_ = new Sprite();
                                                                                          _loc4_.addChild(new Bitmap(_loc3_));
                                                                                          addr025e:
                                                                                          if(!(_loc6_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             TweenMax.to(_loc4_,0,{"colorTransform":{
                                                                                                "tint":this._tint,
                                                                                                "tintAmount":1
                                                                                             }});
                                                                                             if(!(_loc6_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                _loc4_.x = this.iconToMouse.x;
                                                                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   _loc4_.y = this.iconToMouse.y;
                                                                                                   if(!(_loc6_ && Boolean(this)))
                                                                                                   {
                                                                                                      _loc4_.alpha = START_ALPHA;
                                                                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§goto(addr0311);
                                                                                                      }
                                                                                                      §§goto(addr0321);
                                                                                                   }
                                                                                                   addr0311:
                                                                                                   this.mouseTail.addChild(_loc4_);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      TweenMax.to(_loc4_,LIFETIME,{
                                                                                                         "autoAlpha":0,
                                                                                                         "onComplete":completeMove,
                                                                                                         "onCompleteParams":[_loc4_]
                                                                                                      });
                                                                                                      addr0321:
                                                                                                   }
                                                                                                   §§goto(addr034d);
                                                                                                }
                                                                                                §§goto(addr0321);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr034d);
                                                                                       }
                                                                                       §§goto(addr035f);
                                                                                    }
                                                                                    addr034d:
                                                                                    this._oldPos.x = this.iconToMouse.x;
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr035f:
                                                                                       this._oldPos.y = this.iconToMouse.y;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr036b);
                                                                              }
                                                                              §§goto(addr024c);
                                                                           }
                                                                           §§goto(addr036b);
                                                                        }
                                                                        §§goto(addr0203);
                                                                     }
                                                                     §§goto(addr0213);
                                                                  }
                                                                  §§goto(addr0214);
                                                               }
                                                               §§goto(addr0203);
                                                            }
                                                            §§goto(addr024c);
                                                         }
                                                         §§goto(addr025e);
                                                      }
                                                      §§goto(addr01b6);
                                                   }
                                                   §§goto(addr0262);
                                                }
                                                §§goto(addr0191);
                                             }
                                             §§goto(addr0262);
                                          }
                                          §§goto(addr01e6);
                                       }
                                       §§goto(addr0181);
                                    }
                                    §§goto(addr0191);
                                 }
                                 §§goto(addr036b);
                              }
                              §§goto(addr01c5);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr01d7);
                     }
                     §§goto(addr0177);
                  }
                  addr036b:
                  return;
               }
               §§goto(addr0214);
            }
            §§goto(addr01d7);
         }
         §§goto(addr025e);
      }
      
      public function setItem(param1:BriskDynaVo, param2:uint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            this.iconToMouse.briskDynaVo = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0044:
               this._tint = param2;
               if(_loc4_)
               {
                  this.mouseMoveHandler(null);
               }
            }
            return;
         }
         §§goto(addr0044);
      }
      
      private function _MouseAttachLayerView_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.initialized(this,"mouseTail");
                  if(_loc3_)
                  {
                     this.mouseTail = _loc1_;
                     if(_loc3_)
                     {
                        addr0067:
                        BindingManager.executeBindings(this,"mouseTail",this.mouseTail);
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0067);
            }
         }
         addr0074:
         return _loc1_;
      }
      
      private function _MouseAttachLayerView_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "iconToMouse";
            var _temp_2:* = _loc2_;
            §§push(_temp_2);
            if(!_temp_2)
            {
               addr003c:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr005e:
                        this.iconToMouse = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0070:
                           BindingManager.executeBindings(this,"iconToMouse",this.iconToMouse);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0070);
                  }
                  addr007d:
                  return _loc1_;
               }
               §§goto(addr005e);
            }
            §§goto(addr0055);
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconToMouse() : BriskImageDynaLib
      {
         return this._1811405775iconToMouse;
      }
      
      public function set iconToMouse(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1811405775iconToMouse;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1811405775iconToMouse = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconToMouse",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get mouseTail() : SpriteVisualElement
      {
         return this._586353301mouseTail;
      }
      
      public function set mouseTail(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._586353301mouseTail;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004a:
                  this._586353301mouseTail = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mouseTail",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr004a);
      }
   }
}

