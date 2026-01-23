package net.bigpoint.cityrama.view.worldmap
{
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.ImageOutlineButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.event.SimpleEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class WorldMapLayer extends PaperPopupWindow
   {
      
      public static const EVENT_PLAYFIELD_SELECTED:String = "PLAYFIELD_SELECTED";
      
      private static var signPositions:Array;
      
      private static var signOffset:Pt;
      
      private static var shadowOffset:Pt;
      
      private static var shadowOffsetLocked:Pt;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         EVENT_PLAYFIELD_SELECTED = "PLAYFIELD_SELECTED";
         if(_loc2_ || WorldMapLayer)
         {
            signPositions = [new Pt(361,103),new Pt(220,306),new Pt(595,223),new Pt(663,59)];
            if(!_loc1_)
            {
               signOffset = new Pt(80,135);
               if(_loc2_)
               {
                  addr008d:
                  shadowOffset = new Pt(50,58);
                  if(!(_loc1_ && WorldMapLayer))
                  {
                     shadowOffsetLocked = new Pt(43,80);
                     if(!(_loc1_ && _loc2_))
                     {
                        addr00d3:
                        _skinParts = {
                           "moveArea":false,
                           "closeButton":false,
                           "controlBarGroup":false,
                           "contentGroup":false,
                           "backButton":false,
                           "tabBar":false,
                           "sideMenu":false,
                           "titleDisplay":false
                        };
                     }
                     §§goto(addr00fb);
                  }
               }
            }
            §§goto(addr00d3);
         }
         addr00fb:
         return;
      }
      §§goto(addr008d);
      
      private var _1380801655bridge:BriskImageDynaLib;
      
      private var _1684811677cityBuildings1:BriskImageDynaLib;
      
      private var _1684811678cityBuildings2:BriskImageDynaLib;
      
      private var _1684811679cityBuildings3:BriskImageDynaLib;
      
      private var _1684811680cityBuildings4:BriskImageDynaLib;
      
      private var _295396334cityInactiveBackground2:BriskImageDynaLib;
      
      private var _295396335cityInactiveBackground3:BriskImageDynaLib;
      
      private var _295396336cityInactiveBackground4:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _11016679playfieldButton1:ImageOutlineButton;
      
      private var _11016678playfieldButton2:ImageOutlineButton;
      
      private var _11016677playfieldButton3:ImageOutlineButton;
      
      private var _11016676playfieldButton4:ImageOutlineButton;
      
      private var _188097779scrollContentGroup:Group;
      
      private var _1019799188signShadow1:BriskImageDynaLib;
      
      private var _1019799189signShadow2:BriskImageDynaLib;
      
      private var _1019799190signShadow3:BriskImageDynaLib;
      
      private var _1019799191signShadow4:BriskImageDynaLib;
      
      private var _1791483012titleLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _showCloseButton:Boolean = false;
      
      private var _draggingMap:Boolean = false;
      
      private var _draggingMapStart:Pt;
      
      private var _validPlayfieldsDirty:Boolean;
      
      private var _validPlayfields:Array;
      
      public function WorldMapLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.width = 976;
                  if(!_loc2_)
                  {
                     this.maxWidth = 976;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.height = 544;
                        if(!_loc2_)
                        {
                           addr0085:
                           this.maxHeight = 544;
                           if(_loc1_ || Boolean(this))
                           {
                              addr0099:
                              this.mxmlContentFactory = new DeferredInstanceFromFunction(this._WorldMapLayer_Array1_c);
                              if(!_loc2_)
                              {
                                 addr00ae:
                                 this.addEventListener("creationComplete",this.___WorldMapLayer_PaperPopupWindow1_creationComplete);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0099);
                  }
                  addr00ba:
                  return;
               }
               §§goto(addr0085);
            }
         }
         §§goto(addr00ae);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         factory = param1;
         if(!_loc4_)
         {
            super.moduleFactory = factory;
            if(!_loc4_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
               if(!_loc4_)
               {
                  addr0070:
                  if(!this.styleDeclaration)
                  {
                     if(_loc3_)
                     {
                        this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                        if(!_loc4_)
                        {
                           addr008f:
                           this.styleDeclaration.defaultFactory = function():void
                           {
                              this.skinClass = WorldMapLayerSkin;
                           };
                        }
                     }
                     §§goto(addr009a);
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr0070);
         }
         addr009a:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(0.5);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 1;
         while(true)
         {
            if(_loc3_ > 4)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.titleLabel.text = LocaUtils.getString("rcl.booklayer.worldMap","rcl.booklayer.worldMap.title");
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            else
            {
               §§push(this);
               §§push("signShadow");
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc3_);
               }
               §§pop()[§§pop()].alpha = this["playfieldButton" + _loc3_].alpha = 0;
               if(_loc6_)
               {
                  §§push(this);
                  §§push("playfieldButton");
                  if(_loc6_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§pop()[§§pop()].mouseEnabled = false;
                  if(_loc5_ && Boolean(param1))
                  {
                     continue;
                  }
                  §§push(this);
                  §§push("signShadow");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  §§pop()[§§pop()].x = this["playfieldButton" + _loc3_].x = signPositions[_loc3_ - 1].x;
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(this);
               §§push("signShadow");
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + _loc3_);
               }
               §§pop()[§§pop()].y = this["playfieldButton" + _loc3_].y = signPositions[_loc3_ - 1].y;
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
               TweenMax.delayedCall(_loc2_,this.playButtonShowAnimation,[this["playfieldButton" + _loc3_],_loc3_ - 1]);
               if(!_loc6_)
               {
                  continue;
               }
               §§push(_loc2_);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(§§pop() + 0.1);
                  if(_loc6_)
                  {
                     addr0138:
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     _loc3_++;
                     if(!(_loc6_ || _loc2_))
                     {
                        §§goto(addr019f);
                     }
                  }
                  continue;
               }
               §§goto(addr0138);
            }
            §§goto(addr019f);
         }
         this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.worldMap","rcl.booklayer.worldMap.flavour");
         addr019f:
      }
      
      public function setData(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(param1 != this._showCloseButton)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._showCloseButton = param1;
                  if(_loc3_)
                  {
                     addr004c:
                     invalidateProperties();
                  }
                  §§goto(addr0051);
               }
               §§goto(addr004c);
            }
            addr0051:
            return;
         }
         §§goto(addr004c);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc3_))
         {
            super.commitProperties();
            if(!_loc3_)
            {
               if(this.closeButton)
               {
                  if(_loc4_)
                  {
                     var _temp_4:* = this.closeButton;
                     var _loc2_:*;
                     this.closeButton.includeInLayout = _loc2_ = this._showCloseButton;
                     _temp_4.visible = _loc2_;
                     if(!_loc3_)
                     {
                        addr0056:
                        §§push(this._validPlayfieldsDirty);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr0080:
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          §§push(this._validPlayfields);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                addr00a1:
                                                var _temp_8:* = §§pop();
                                                addr00a2:
                                                §§push(_temp_8);
                                                if(_temp_8)
                                                {
                                                   if(_loc4_ || Boolean(_loc1_))
                                                   {
                                                      addr00b4:
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr00c4);
                                                      }
                                                      §§goto(addr00cd);
                                                   }
                                                }
                                                addr00c4:
                                                §§goto(addr00bf);
                                             }
                                             §§goto(addr00b4);
                                          }
                                          addr00bf:
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr0257);
                                    }
                                 }
                                 §§goto(addr00a1);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr0080);
                        }
                        §§goto(addr00a1);
                     }
                     addr00bb:
                     if(this._validPlayfields.length >= 4)
                     {
                        if(!_loc3_)
                        {
                           addr00cd:
                           this._validPlayfieldsDirty = false;
                           if(!_loc3_)
                           {
                              addr00d7:
                              _loc1_ = 1;
                           }
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop1:
                           while(true)
                           {
                              §§push(4);
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push("playfieldButton");
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() + _loc1_);
                                    }
                                    §§pop()[§§pop()].enabled = this._validPlayfields[_loc1_ - 1];
                                    if(_loc4_)
                                    {
                                       §§push(this);
                                       §§push("cityBuildings");
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + _loc1_);
                                       }
                                       §§pop()[§§pop()].visible = this._validPlayfields[_loc1_ - 1];
                                       if(!_loc3_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_ && Boolean(this))
                                          {
                                             continue loop1;
                                          }
                                          §§push(1);
                                          if(_loc3_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                §§push(this);
                                                §§push("cityInactiveBackground");
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(§§pop() + _loc1_);
                                                }
                                                var _temp_28:* = §§pop()[§§pop()];
                                                this["cityInactiveBackground" + _loc1_].includeInLayout = _loc2_ = !this._validPlayfields[_loc1_ - 1];
                                                _temp_28.visible = _loc2_;
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§goto(addr01a9);
                                                }
                                             }
                                             §§goto(addr0250);
                                          }
                                          addr01a9:
                                          if(this._validPlayfields[_loc1_ - 1])
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr01c4:
                                                §§push(this);
                                                §§push("playfieldButton");
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§push(§§pop() + _loc1_);
                                                }
                                                §§pop()[§§pop()].dynaBmpSourceName = "sign_playfield_" + _loc1_;
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(this);
                                                §§push("signShadow");
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() + _loc1_);
                                                }
                                                §§pop()[§§pop()].dynaBmpSourceName = "sign_shadow";
                                                if(_loc3_)
                                                {
                                                   §§goto(addr022b);
                                                }
                                                §§goto(addr0250);
                                             }
                                             §§goto(addr022b);
                                          }
                                          else
                                          {
                                             §§push(this);
                                             §§push("playfieldButton");
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§push(§§pop() + _loc1_);
                                             }
                                             §§pop()[§§pop()].dynaBmpSourceName = "sign_locked";
                                             if(_loc4_)
                                             {
                                                addr022b:
                                                §§push(this);
                                                §§push("signShadow");
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() + _loc1_);
                                                }
                                                §§pop()[§§pop()].dynaBmpSourceName = "sign_shadow_lock";
                                                if(_loc4_)
                                                {
                                                   addr0250:
                                                   _loc1_++;
                                                   if(!_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr027e);
                                             }
                                          }
                                          §§goto(addr027e);
                                       }
                                       §§goto(addr022b);
                                    }
                                    §§goto(addr01c4);
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        this.bridge.visible = this.bridge.includeInLayout = this._validPlayfields[1];
                        addr0257:
                     }
                     addr027e:
                     return;
                  }
                  §§goto(addr0257);
               }
               §§goto(addr0056);
            }
            §§goto(addr0257);
         }
         §§goto(addr00d7);
      }
      
      private function onPlayfieldSelect(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            dispatchEvent(new SimpleEvent(EVENT_PLAYFIELD_SELECTED,this.playfieldButtonToIndex(param1.target as Button)));
         }
      }
      
      private function playfieldButtonToIndex(param1:Button) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               while(§§pop() <= 4)
               {
                  if(param1 == this["playfieldButton" + _loc2_])
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     continue;
                  }
                  _loc2_++;
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return 0;
            }
            break;
         }
         return §§pop();
      }
      
      private function onPlayfieldOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1.target is Button)
            {
               if(_loc2_ || _loc2_)
               {
                  addr003c:
                  this.playButtonOverAnimation(param1.target as Button,this.playfieldButtonToIndex(param1.target as Button) - 1);
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function playButtonShowAnimation(param1:Button, param2:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            if(TweenMax.isTweening(param1))
            {
               if(_loc6_)
               {
                  §§goto(addr0037);
               }
            }
            else
            {
               param1.mouseEnabled = true;
            }
            var _loc3_:Number = Number(signPositions[param2].y);
            if(!_loc7_)
            {
               TweenMax.fromTo(param1,1,{"y":_loc3_ - 100},{
                  "y":_loc3_,
                  "ease":Bounce.easeOut
               });
               if(!(_loc7_ && Boolean(param2)))
               {
                  addr008c:
                  TweenMax.fromTo(param1,0.5,{"alpha":0},{
                     "alpha":1,
                     "ease":Sine.easeIn
                  });
               }
               §§push(this);
               §§push("signShadow");
               if(_loc6_ || Boolean(param2))
               {
                  §§push(§§pop() + (param2 + 1));
               }
               var _loc4_:UIComponent = §§pop()[§§pop()];
               _loc4_.x = 400;
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc4_.y = 200;
                  if(!(_loc7_ && Boolean(param2)))
                  {
                     addr0101:
                     _loc4_.includeInLayout = true;
                  }
                  var _loc5_:Pt = shadowOffset;
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     if(!this._validPlayfields[param2])
                     {
                        if(_loc6_ || Boolean(param1))
                        {
                           _loc5_ = shadowOffsetLocked;
                           TweenMax.fromTo(_loc4_,1,{
                              "y":_loc3_ + signOffset.y - _loc5_.y - 70,
                              "x":param1.x + signOffset.x - _loc5_.x + 150
                           },{
                              "y":_loc3_ + signOffset.y - _loc5_.y,
                              "x":param1.x + signOffset.x - _loc5_.x,
                              "ease":Bounce.easeOut
                           });
                           §§goto(addr013e);
                        }
                        §§goto(addr01ac);
                     }
                     addr013e:
                     if(_loc6_)
                     {
                        addr01ac:
                        TweenMax.fromTo(_loc4_,0.5,{"alpha":0},{
                           "alpha":1,
                           "ease":Sine.easeIn
                        });
                     }
                     §§goto(addr01cd);
                  }
                  addr01cd:
                  return;
               }
               §§goto(addr0101);
            }
            §§goto(addr008c);
         }
         addr0037:
      }
      
      private function playButtonOverAnimation(param1:Button, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!(_loc7_ && Boolean(param2)))
         {
            if(TweenMax.isTweening(param1))
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc3_:Number = Number(signPositions[param2].y);
         §§push(0.1);
         if(!(_loc7_ && Boolean(param2)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc8_ || Boolean(this))
         {
            TweenMax.fromTo(param1,_loc4_,{"y":_loc3_},{
               "y":_loc3_ - 30,
               "ease":Linear.easeInOut
            });
            if(!(_loc7_ && Boolean(param1)))
            {
               TweenMax.fromTo(param1,0.5,{"y":_loc3_ - 30},{
                  "y":_loc3_,
                  "delay":0.1,
                  "ease":Bounce.easeOut
               });
            }
         }
         §§push(this);
         §§push("signShadow");
         if(_loc8_ || Boolean(this))
         {
            §§push(§§pop() + (param2 + 1));
         }
         var _loc5_:UIComponent = §§pop()[§§pop()];
         var _loc6_:Pt = shadowOffset;
         if(_loc8_ || Boolean(_loc3_))
         {
            if(!this._validPlayfields[param2])
            {
               if(!_loc7_)
               {
                  _loc6_ = shadowOffsetLocked;
                  §§goto(addr0111);
               }
               §§goto(addr0174);
            }
            addr0111:
            TweenMax.fromTo(_loc5_,_loc4_,{
               "y":_loc3_ + signOffset.y - _loc6_.y,
               "x":param1.x + signOffset.x - _loc6_.x
            },{
               "y":_loc3_ + signOffset.y - _loc6_.y - 25,
               "x":param1.x + signOffset.x - _loc6_.x + 55,
               "ease":Sine.easeOut
            });
            if(_loc8_)
            {
               addr0174:
               TweenMax.fromTo(_loc5_,_loc4_,{"alpha":1},{
                  "alpha":0,
                  "ease":Sine.easeOut
               });
               if(!_loc7_)
               {
                  TweenMax.fromTo(_loc5_,0.5,{
                     "y":_loc3_ + signOffset.y - _loc6_.y - 25,
                     "x":param1.x + signOffset.x - _loc6_.x + 55
                  },{
                     "y":_loc3_ + signOffset.y - _loc6_.y,
                     "x":param1.x + signOffset.x - _loc6_.x,
                     "delay":_loc4_,
                     "ease":Bounce.easeOut
                  });
                  if(!_loc7_)
                  {
                     addr0210:
                     TweenMax.fromTo(_loc5_,0.25,{"alpha":0},{
                        "alpha":1,
                        "delay":_loc4_,
                        "ease":Sine.easeIn
                     });
                  }
                  §§goto(addr0236);
               }
               §§goto(addr0210);
            }
            §§goto(addr0236);
         }
         addr0236:
      }
      
      public function setValidPlayfields(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._validPlayfields = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               this._validPlayfieldsDirty = true;
               if(!(_loc2_ && _loc2_))
               {
                  addr0047:
                  invalidateProperties();
               }
               §§goto(addr004c);
            }
            §§goto(addr0047);
         }
         addr004c:
      }
      
      private function _WorldMapLayer_Array1_c() : Array
      {
         return [this._WorldMapLayer_Group1_i()];
      }
      
      private function _WorldMapLayer_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.maxWidth = 976;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._WorldMapLayer_BriskImageDynaLib1_c(),this._WorldMapLayer_BriskImageDynaLib2_i(),this._WorldMapLayer_BriskImageDynaLib3_i(),this._WorldMapLayer_BriskImageDynaLib4_i(),this._WorldMapLayer_BriskImageDynaLib5_i(),this._WorldMapLayer_BriskImageDynaLib6_i(),this._WorldMapLayer_BriskImageDynaLib7_i(),this._WorldMapLayer_BriskImageDynaLib8_i(),this._WorldMapLayer_BriskImageDynaLib9_i(),this._WorldMapLayer_BriskImageDynaLib10_i(),this._WorldMapLayer_BriskImageDynaLib11_i(),this._WorldMapLayer_BriskImageDynaLib12_i(),this._WorldMapLayer_BriskImageDynaLib13_i(),this._WorldMapLayer_ImageOutlineButton1_i(),this._WorldMapLayer_ImageOutlineButton2_i(),this._WorldMapLayer_ImageOutlineButton3_i(),this._WorldMapLayer_ImageOutlineButton4_i(),this._WorldMapLayer_VGroup1_c()];
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "scrollContentGroup";
                        if(_loc2_)
                        {
                           addr00ee:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00fa:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr0103);
                                 }
                              }
                              §§goto(addr010d);
                           }
                           addr0103:
                           this.scrollContentGroup = _loc1_;
                           if(_loc2_)
                           {
                              addr010d:
                              BindingManager.executeBindings(this,"scrollContentGroup",this.scrollContentGroup);
                           }
                           §§goto(addr011a);
                        }
                        addr011a:
                        return _loc1_;
                     }
                     §§goto(addr010d);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr00fa);
            }
            §§goto(addr00ee);
         }
         §§goto(addr00fa);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "map";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.x = 42;
            if(!_loc2_)
            {
               _loc1_.y = 312;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(!_loc2_)
                  {
                     §§goto(addr005b);
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr0081);
         }
         addr005b:
         _loc1_.dynaBmpSourceName = "playfield_inactive_2";
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               _loc1_.includeInLayout = false;
               if(!(_loc2_ && _loc2_))
               {
                  addr0081:
                  _loc1_.id = "cityInactiveBackground2";
                  if(!_loc2_)
                  {
                     addr0099:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr00a5);
                        }
                     }
                     §§goto(addr00ae);
                  }
               }
               addr00a5:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr00ae:
                  this.cityInactiveBackground2 = _loc1_;
                  if(_loc3_)
                  {
                     BindingManager.executeBindings(this,"cityInactiveBackground2",this.cityInactiveBackground2);
                  }
               }
               §§goto(addr00c5);
            }
            §§goto(addr0099);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.x = 474;
            if(!_loc3_)
            {
               _loc1_.y = 287;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0049:
                     _loc1_.dynaBmpSourceName = "playfield_inactive_3";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.visible = false;
                        addr005d:
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_)
                           {
                              §§goto(addr0081);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr005d);
               }
               addr0081:
               _loc1_.id = "cityInactiveBackground3";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0094:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00c6:
                           this.cityInactiveBackground3 = _loc1_;
                           if(!_loc3_)
                           {
                              addr00d0:
                              BindingManager.executeBindings(this,"cityInactiveBackground3",this.cityInactiveBackground3);
                           }
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00dd);
            }
            addr00dd:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.x = 523;
            if(!_loc3_)
            {
               addr002a:
               _loc1_.y = 75;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(_loc2_)
                  {
                     addr003f:
                     _loc1_.dynaBmpSourceName = "playfield_inactive_4";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0083:
                              _loc1_.id = "cityInactiveBackground4";
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a3:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00b8:
                                          this.cityInactiveBackground4 = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00c2:
                                             BindingManager.executeBindings(this,"cityInactiveBackground4",this.cityInactiveBackground4);
                                          }
                                       }
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00b8);
                              }
                           }
                           addr00cf:
                           return _loc1_;
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr003f);
            }
            §§goto(addr00b8);
         }
         §§goto(addr002a);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.x = 305;
            if(!_loc2_)
            {
               _loc1_.y = 326;
               if(!_loc2_)
               {
                  addr003e:
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0051:
                     _loc1_.dynaBmpSourceName = "bridge";
                     if(_loc3_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0083:
                              _loc1_.id = "bridge";
                              if(_loc3_ || _loc3_)
                              {
                                 addr0096:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00a2:
                                       _loc1_.document = this;
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00d0);
                                    }
                                 }
                                 addr00be:
                                 this.bridge = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00d0:
                                    BindingManager.executeBindings(this,"bridge",this.bridge);
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00a2);
                           }
                           addr00dd:
                           return _loc1_;
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0051);
            }
         }
         §§goto(addr003e);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.x = 285;
            if(!_loc2_)
            {
               _loc1_.y = 155;
               if(_loc3_ || _loc3_)
               {
                  addr0053:
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "city_buildings_1";
                     if(!_loc2_)
                     {
                        _loc1_.id = "cityBuildings1";
                        if(!_loc2_)
                        {
                           addr007d:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                           addr00a6:
                           this.cityBuildings1 = _loc1_;
                           if(_loc3_)
                           {
                              addr00b0:
                              BindingManager.executeBindings(this,"cityBuildings1",this.cityBuildings1);
                           }
                           §§goto(addr00bd);
                        }
                        addr00bd:
                        return _loc1_;
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0095);
            }
            §§goto(addr0053);
         }
         §§goto(addr00a6);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.x = 103;
            if(!_loc2_)
            {
               _loc1_.y = 311;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "city_buildings_2";
                     if(!_loc2_)
                     {
                        _loc1_.id = "cityBuildings2";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr0080);
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr009d);
                     }
                  }
               }
            }
         }
         addr0080:
         _loc1_.document = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr009d:
            this.cityBuildings2 = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr00af:
               BindingManager.executeBindings(this,"cityBuildings2",this.cityBuildings2);
            }
         }
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.x = 520;
            if(!_loc3_)
            {
               _loc1_.y = 325;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "city_buildings_3";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "cityBuildings3";
                        if(_loc2_ || _loc3_)
                        {
                           addr0097:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00ac:
                                    this.cityBuildings3 = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00b6:
                                       BindingManager.executeBindings(this,"cityBuildings3",this.cityBuildings3);
                                    }
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           §§goto(addr00ac);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00b6);
            }
            addr00c3:
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.x = 575;
            if(_loc2_)
            {
               _loc1_.y = 107;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.dynaLibName = "gui_popups_worldMap";
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.dynaBmpSourceName = "city_buildings_4";
                     if(_loc2_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.id = "cityBuildings4";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a2:
                                    this.cityBuildings4 = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"cityBuildings4",this.cityBuildings4);
                                    }
                                 }
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b4);
                     }
                  }
                  addr00c1:
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr005b);
         }
         §§goto(addr006f);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  addr0047:
                  _loc1_.id = "signShadow1";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0079);
                           }
                        }
                        §§goto(addr0083);
                     }
                     addr0079:
                     this.signShadow1 = _loc1_;
                     if(!_loc3_)
                     {
                        addr0083:
                        BindingManager.executeBindings(this,"signShadow1",this.signShadow1);
                     }
                     §§goto(addr0090);
                  }
               }
               addr0090:
               return _loc1_;
            }
            §§goto(addr0047);
         }
         §§goto(addr0083);
      }
      
      private function _WorldMapLayer_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.includeInLayout = false;
               if(!_loc2_)
               {
                  §§goto(addr0053);
               }
               §§goto(addr00a1);
            }
            addr0053:
            _loc1_.id = "signShadow2";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr008f:
                        this.signShadow2 = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00a1:
                           BindingManager.executeBindings(this,"signShadow2",this.signShadow2);
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr008f);
            }
            §§goto(addr00ae);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0092);
         }
         addr0035:
         _loc1_.includeInLayout = false;
         if(!_loc2_)
         {
            _loc1_.id = "signShadow3";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr0080:
                        this.signShadow3 = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0092:
                           BindingManager.executeBindings(this,"signShadow3",this.signShadow3);
                        }
                     }
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0080);
            }
         }
         addr009f:
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.includeInLayout = false;
               if(_loc3_)
               {
                  _loc1_.id = "signShadow4";
                  if(!_loc2_)
                  {
                     addr0050:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0069:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr007a:
                              this.signShadow4 = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"signShadow4",this.signShadow4);
                              }
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr007a);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr0069);
            }
            §§goto(addr0050);
         }
         §§goto(addr007a);
      }
      
      private function _WorldMapLayer_ImageOutlineButton1_i() : ImageOutlineButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.hasUpOutline = false;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0052:
                  _loc1_.addEventListener("click",this.__playfieldButton1_click);
                  if(!_loc3_)
                  {
                     _loc1_.addEventListener("mouseOver",this.__playfieldButton1_mouseOver);
                     if(_loc2_)
                     {
                        _loc1_.id = "playfieldButton1";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a7);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00b1);
            }
            §§goto(addr0052);
         }
         addr00a7:
         this.playfieldButton1 = _loc1_;
         if(!_loc3_)
         {
            addr00b1:
            BindingManager.executeBindings(this,"playfieldButton1",this.playfieldButton1);
         }
         return _loc1_;
      }
      
      public function __playfieldButton1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onPlayfieldSelect(param1);
         }
      }
      
      public function __playfieldButton1_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onPlayfieldOverHandler(param1);
         }
      }
      
      private function _WorldMapLayer_ImageOutlineButton2_i() : ImageOutlineButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.hasUpOutline = false;
               if(!_loc2_)
               {
                  addr0041:
                  _loc1_.enabled = false;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__playfieldButton2_click);
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.addEventListener("mouseOver",this.__playfieldButton2_mouseOver);
                        if(_loc3_)
                        {
                           addr0082:
                           _loc1_.id = "playfieldButton2";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00ae);
                                    }
                                    §§goto(addr00b8);
                                 }
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr0041);
         }
         addr00ae:
         this.playfieldButton2 = _loc1_;
         if(!_loc2_)
         {
            addr00b8:
            BindingManager.executeBindings(this,"playfieldButton2",this.playfieldButton2);
         }
         return _loc1_;
      }
      
      public function __playfieldButton2_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.onPlayfieldSelect(param1);
         }
      }
      
      public function __playfieldButton2_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.onPlayfieldOverHandler(param1);
         }
      }
      
      private function _WorldMapLayer_ImageOutlineButton3_i() : ImageOutlineButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(_loc3_)
            {
               _loc1_.hasUpOutline = false;
               if(_loc3_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr00d5);
            }
            addr003f:
            _loc1_.enabled = false;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.addEventListener("click",this.__playfieldButton3_click);
               if(_loc3_)
               {
                  addr006f:
                  _loc1_.addEventListener("mouseOver",this.__playfieldButton3_mouseOver);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0088:
                     _loc1_.id = "playfieldButton3";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr00a7);
                           }
                           §§goto(addr00d5);
                        }
                     }
                     §§goto(addr00c3);
                  }
                  addr00a7:
                  _loc1_.document = this;
                  if(_loc3_ || _loc2_)
                  {
                     addr00c3:
                     this.playfieldButton3 = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00d5:
                        BindingManager.executeBindings(this,"playfieldButton3",this.playfieldButton3);
                     }
                  }
                  §§goto(addr00e2);
               }
               §§goto(addr0088);
            }
            addr00e2:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      public function __playfieldButton3_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onPlayfieldSelect(param1);
         }
      }
      
      public function __playfieldButton3_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onPlayfieldOverHandler(param1);
         }
      }
      
      private function _WorldMapLayer_ImageOutlineButton4_i() : ImageOutlineButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_worldMap";
            if(_loc2_ || _loc3_)
            {
               _loc1_.hasUpOutline = false;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.enabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__playfieldButton4_click);
                     addr0053:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.addEventListener("mouseOver",this.__playfieldButton4_mouseOver);
                        if(!_loc3_)
                        {
                           _loc1_.id = "playfieldButton4";
                           if(_loc2_ || _loc2_)
                           {
                              addr009c:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00bf:
                                       this.playfieldButton4 = _loc1_;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00d1:
                                          BindingManager.executeBindings(this,"playfieldButton4",this.playfieldButton4);
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00d1);
                              }
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00bf);
            }
            §§goto(addr0053);
         }
         §§goto(addr00bf);
      }
      
      public function __playfieldButton4_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onPlayfieldSelect(param1);
         }
      }
      
      public function __playfieldButton4_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onPlayfieldOverHandler(param1);
         }
      }
      
      private function _WorldMapLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 186;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 161;
               if(_loc3_)
               {
                  _loc1_.maxWidth = 186;
                  if(!_loc2_)
                  {
                     _loc1_.maxHeight = 161;
                     if(_loc3_)
                     {
                        _loc1_.left = 32;
                        if(_loc3_)
                        {
                           _loc1_.top = 30;
                           if(!_loc2_)
                           {
                              addr0081:
                              _loc1_.horizontalCenter = "center";
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr0093);
                              }
                              §§goto(addr00de);
                           }
                           addr0093:
                           _loc1_.verticalCenter = "top";
                           if(!_loc2_)
                           {
                              _loc1_.gap = 10;
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00d2);
                           }
                        }
                        §§goto(addr00bc);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00d2);
            }
            addr00bc:
            _loc1_.mxmlContent = [this._WorldMapLayer_LocaLabel1_i(),this._WorldMapLayer_LocaLabel2_i()];
            if(_loc3_)
            {
               addr00d2:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00de:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr00d2);
      }
      
      private function _WorldMapLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.width = 180;
               if(!(_loc2_ && _loc3_))
               {
                  addr0041:
                  _loc1_.height = 20;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr0073);
            }
            addr005f:
            _loc1_.maxWidth = 186;
            if(_loc3_ || Boolean(this))
            {
               addr0073:
               _loc1_.styleName = "blueThirteenCenter";
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0086);
               }
               §§goto(addr00a4);
            }
            addr0086:
            _loc1_.id = "titleLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               addr00a4:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr00b0:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr00b9);
                     }
                  }
                  §§goto(addr00c3);
               }
            }
            addr00b9:
            this.titleLabel = _loc1_;
            if(_loc3_)
            {
               addr00c3:
               BindingManager.executeBindings(this,"titleLabel",this.titleLabel);
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _WorldMapLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0030);
            }
            §§goto(addr0085);
         }
         addr0030:
         _loc1_.maxWidth = 186;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "greyElevenCenter";
            if(_loc2_)
            {
               _loc1_.id = "flavourLabel";
               if(_loc2_)
               {
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0085:
                           this.flavourLabel = _loc1_;
                           if(_loc2_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr008f);
            }
            §§goto(addr0070);
         }
         addr009c:
         return _loc1_;
      }
      
      public function ___WorldMapLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bridge() : BriskImageDynaLib
      {
         return this._1380801655bridge;
      }
      
      public function set bridge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1380801655bridge;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1380801655bridge = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bridge",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings1() : BriskImageDynaLib
      {
         return this._1684811677cityBuildings1;
      }
      
      public function set cityBuildings1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684811677cityBuildings1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1684811677cityBuildings1 = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings1",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings2() : BriskImageDynaLib
      {
         return this._1684811678cityBuildings2;
      }
      
      public function set cityBuildings2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684811678cityBuildings2;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1684811678cityBuildings2 = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr007b);
            }
            addr008a:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings3() : BriskImageDynaLib
      {
         return this._1684811679cityBuildings3;
      }
      
      public function set cityBuildings3(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684811679cityBuildings3;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684811679cityBuildings3 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings3",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings4() : BriskImageDynaLib
      {
         return this._1684811680cityBuildings4;
      }
      
      public function set cityBuildings4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684811680cityBuildings4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684811680cityBuildings4 = param1;
                  if(_loc4_)
                  {
                     addr003f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings4",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground2() : BriskImageDynaLib
      {
         return this._295396334cityInactiveBackground2;
      }
      
      public function set cityInactiveBackground2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._295396334cityInactiveBackground2;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._295396334cityInactiveBackground2 = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground2",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground3() : BriskImageDynaLib
      {
         return this._295396335cityInactiveBackground3;
      }
      
      public function set cityInactiveBackground3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._295396335cityInactiveBackground3;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._295396335cityInactiveBackground3 = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground4() : BriskImageDynaLib
      {
         return this._295396336cityInactiveBackground4;
      }
      
      public function set cityInactiveBackground4(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._295396336cityInactiveBackground4;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._295396336cityInactiveBackground4 = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground4",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0045:
                  this._949820541flavourLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007c);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton1() : ImageOutlineButton
      {
         return this._11016679playfieldButton1;
      }
      
      public function set playfieldButton1(param1:ImageOutlineButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._11016679playfieldButton1;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._11016679playfieldButton1 = param1;
                  if(_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr005b);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton2() : ImageOutlineButton
      {
         return this._11016678playfieldButton2;
      }
      
      public function set playfieldButton2(param1:ImageOutlineButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._11016678playfieldButton2;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._11016678playfieldButton2 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0073);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton2",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton3() : ImageOutlineButton
      {
         return this._11016677playfieldButton3;
      }
      
      public function set playfieldButton3(param1:ImageOutlineButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._11016677playfieldButton3;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._11016677playfieldButton3 = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton3",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton4() : ImageOutlineButton
      {
         return this._11016676playfieldButton4;
      }
      
      public function set playfieldButton4(param1:ImageOutlineButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._11016676playfieldButton4;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._11016676playfieldButton4 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollContentGroup() : Group
      {
         return this._188097779scrollContentGroup;
      }
      
      public function set scrollContentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._188097779scrollContentGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._188097779scrollContentGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0067);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollContentGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow1() : BriskImageDynaLib
      {
         return this._1019799188signShadow1;
      }
      
      public function set signShadow1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1019799188signShadow1;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1019799188signShadow1 = param1;
                  if(!_loc4_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0062);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow2() : BriskImageDynaLib
      {
         return this._1019799189signShadow2;
      }
      
      public function set signShadow2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1019799189signShadow2;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1019799189signShadow2 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow3() : BriskImageDynaLib
      {
         return this._1019799190signShadow3;
      }
      
      public function set signShadow3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1019799190signShadow3;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1019799190signShadow3 = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0070);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow3",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow4() : BriskImageDynaLib
      {
         return this._1019799191signShadow4;
      }
      
      public function set signShadow4(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1019799191signShadow4;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1019799191signShadow4 = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get titleLabel() : LocaLabel
      {
         return this._1791483012titleLabel;
      }
      
      public function set titleLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1791483012titleLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1791483012titleLabel = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
   }
}

