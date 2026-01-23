package net.bigpoint.cityrama.view.application.ui.skins
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   import spark.components.supportClasses.Skin;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class RoundedBorderContainerSkin extends Skin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RoundedBorderContainerSkin_BitmapImage1:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage2:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage3:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage4:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage5:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage6:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage7:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage8:BitmapImage;
      
      public var _RoundedBorderContainerSkin_SolidColor1:SolidColor;
      
      private var _809612678contentGroup:Group;
      
      private var _406820268overlayRect:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:SkinnableContainer;
      
      public function RoundedBorderContainerSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var _RoundedBorderContainerSkin_Rect1_factory:DeferredInstanceFromFunction;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr0045:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc1_))
                           {
                              addr0067:
                              §§pop().§§slot[6] = null;
                              if(_loc3_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_ || _loc1_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || Boolean(this))
                                          {
                                             super();
                                             if(!_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   addr00d9:
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      addr00e0:
                                                      §§pop().§§slot[1] = this._RoundedBorderContainerSkin_bindingsSetup();
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr00f8:
                                                         §§push(§§newactivation());
                                                         if(_loc3_)
                                                         {
                                                            addr00ff:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr012c:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§§slot[6] = getDefinitionByName("_net_bigpoint_cityrama_view_application_ui_skins_RoundedBorderContainerSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr015c:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr016b:
                                                                                    §§pop().§§slot[6]["init"](null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr018c:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return RoundedBorderContainerSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                addr01fc:
                                                                                                this.mxmlContent = [this._RoundedBorderContainerSkin_Group1_i(),this._RoundedBorderContainerSkin_BitmapImage1_i(),this._RoundedBorderContainerSkin_BitmapImage2_i(),this._RoundedBorderContainerSkin_BitmapImage3_i(),this._RoundedBorderContainerSkin_BitmapImage4_i(),this._RoundedBorderContainerSkin_BitmapImage5_i(),this._RoundedBorderContainerSkin_BitmapImage6_i(),this._RoundedBorderContainerSkin_BitmapImage7_i(),this._RoundedBorderContainerSkin_BitmapImage8_i()];
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr023c:
                                                                                                   this.currentState = "disabled";
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr0251:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         addr0261:
                                                                                                         §§pop().§§slot[4] = new DeferredInstanceFromFunction(this._RoundedBorderContainerSkin_Rect1_i);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr0277:
                                                                                                            states = [new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[new AddItems().initializeFromObject({
                                                                                                                  "itemsFactory":_RoundedBorderContainerSkin_Rect1_factory,
                                                                                                                  "destination":null,
                                                                                                                  "propertyName":"mxmlContent",
                                                                                                                  "position":"after",
                                                                                                                  "relativeTo":["_RoundedBorderContainerSkin_BitmapImage8"]
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            })];
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr02d3:
                                                                                                               i = 0;
                                                                                                               addr02d1:
                                                                                                            }
                                                                                                            loop0:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[5]);
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        Binding(bindings[i]).execute();
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc3_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[5]);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              var _temp_26:* = §§pop();
                                                                                                                              §§pop().§§slot[5] = _temp_26;
                                                                                                                              if(!(_loc4_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            return;
                                                                                                            addr0348:
                                                                                                         }
                                                                                                         §§goto(addr02d1);
                                                                                                      }
                                                                                                      §§goto(addr02d3);
                                                                                                   }
                                                                                                   §§goto(addr02d1);
                                                                                                }
                                                                                                §§goto(addr0277);
                                                                                             }
                                                                                             §§goto(addr0251);
                                                                                          }
                                                                                          §§goto(addr01fc);
                                                                                       }
                                                                                       §§goto(addr0277);
                                                                                    }
                                                                                    §§goto(addr023c);
                                                                                 }
                                                                                 §§goto(addr0261);
                                                                              }
                                                                              §§goto(addr01fc);
                                                                           }
                                                                           §§goto(addr02d3);
                                                                        }
                                                                        §§goto(addr02d1);
                                                                     }
                                                                     §§goto(addr018c);
                                                                  }
                                                                  §§goto(addr0348);
                                                               }
                                                               §§goto(addr016b);
                                                            }
                                                            §§goto(addr018c);
                                                         }
                                                         §§goto(addr0261);
                                                      }
                                                      §§goto(addr0277);
                                                   }
                                                   §§goto(addr016b);
                                                }
                                                §§goto(addr0277);
                                             }
                                             §§goto(addr012c);
                                          }
                                          §§goto(addr023c);
                                       }
                                       §§goto(addr012c);
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr015c);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr0348);
            }
            §§goto(addr0045);
         }
         §§goto(addr00ff);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            RoundedBorderContainerSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0063);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0077);
            }
            addr0063:
            return;
         }
         addr0077:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super.updateDisplayList(param1,param2);
         }
      }
      
      private function _RoundedBorderContainerSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0059:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.id = "contentGroup";
                        if(!_loc3_)
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0097:
                                    this.contentGroup = _loc1_;
                                    if(!_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                                    }
                                 }
                                 §§goto(addr00ae);
                              }
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr006e);
                  }
                  addr00ae:
                  return _loc1_;
               }
               §§goto(addr0059);
            }
            §§goto(addr0097);
         }
         §§goto(addr006e);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage1_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.rotation = 180;
                  if(!_loc2_)
                  {
                     addr006a:
                     _loc1_.width = 8;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.height = 8;
                        if(!_loc2_)
                        {
                           _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage1");
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a8:
                              this._RoundedBorderContainerSkin_BitmapImage1 = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00bb:
                                 BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage1",this._RoundedBorderContainerSkin_BitmapImage1);
                              }
                              §§goto(addr00c9);
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00c9);
            }
            §§goto(addr006a);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage2_i() : BitmapImage
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BitmapImage = new BitmapImage();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  addr0034:
                  _loc1_.rotation = -90;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.width = 8;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.height = 8;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007f:
                           _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage2");
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr00a0);
                        }
                        addr0095:
                        this._RoundedBorderContainerSkin_BitmapImage2 = _loc1_;
                        if(_loc2_)
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage2",this._RoundedBorderContainerSkin_BitmapImage2);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr007f);
                  }
               }
               addr00ae:
               return _loc1_;
            }
            §§goto(addr0034);
         }
         §§goto(addr00a0);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage3_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.right = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.width = 8;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006e:
                     _loc1_.height = 8;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage3");
                        if(_loc3_)
                        {
                           §§goto(addr009b);
                        }
                        §§goto(addr00ae);
                     }
                     addr009b:
                     this._RoundedBorderContainerSkin_BitmapImage3 = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00ae:
                        BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage3",this._RoundedBorderContainerSkin_BitmapImage3);
                     }
                     §§goto(addr00bc);
                  }
               }
               §§goto(addr00ae);
            }
            addr00bc:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage4_i() : BitmapImage
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc2_ || _loc3_)
         {
            _loc1_.bottom = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.width = 8;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0066:
                     _loc1_.height = 8;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.rotation = 90;
                        if(_loc2_)
                        {
                           addr0083:
                           _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage4");
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00a3:
                              this._RoundedBorderContainerSkin_BitmapImage4 = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00b6:
                                 BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage4",this._RoundedBorderContainerSkin_BitmapImage4);
                              }
                              §§goto(addr00c4);
                           }
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0083);
            }
            addr00c4:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage5_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 8;
               if(!_loc2_)
               {
                  _loc1_.right = 8;
                  if(_loc3_)
                  {
                     _loc1_.rotation = 180;
                     if(!_loc2_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr009f);
               }
            }
            addr0069:
            _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage5");
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr008c:
               this._RoundedBorderContainerSkin_BitmapImage5 = _loc1_;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr009f:
                  BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage5",this._RoundedBorderContainerSkin_BitmapImage5);
               }
            }
            §§goto(addr00ad);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage6_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.left = 8;
               if(!_loc2_)
               {
                  _loc1_.right = 8;
                  if(_loc3_ || _loc2_)
                  {
                     addr0060:
                     _loc1_.rotation = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0073:
                        _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage6");
                        if(_loc3_ || _loc2_)
                        {
                           this._RoundedBorderContainerSkin_BitmapImage6 = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a8:
                              BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage6",this._RoundedBorderContainerSkin_BitmapImage6);
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr00a8);
         }
         §§goto(addr0060);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage7_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_ || _loc3_)
            {
               addr0034:
               _loc1_.top = 8;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.bottom = 8;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.rotation = 90;
                     if(_loc3_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr0094);
                  }
                  addr007e:
                  _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage7");
                  if(_loc3_ || _loc2_)
                  {
                     addr0094:
                     this._RoundedBorderContainerSkin_BitmapImage7 = _loc1_;
                     if(!_loc2_)
                     {
                        addr009e:
                        BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage7",this._RoundedBorderContainerSkin_BitmapImage7);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009e);
            }
            §§goto(addr0094);
         }
         §§goto(addr0034);
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage8_i() : BitmapImage
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapImage = new BitmapImage();
         if(!_loc2_)
         {
            _loc1_.right = 0;
            if(!_loc2_)
            {
               _loc1_.top = 8;
               if(_loc3_)
               {
                  _loc1_.bottom = 8;
                  if(!_loc2_)
                  {
                     _loc1_.rotation = -90;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006c:
                        _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage8");
                        if(!_loc2_)
                        {
                           this._RoundedBorderContainerSkin_BitmapImage8 = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008d:
                              BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage8",this._RoundedBorderContainerSkin_BitmapImage8);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr009b);
            }
            §§goto(addr008d);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.bottom = 0;
                     if(!_loc3_)
                     {
                        _loc1_.fill = this._RoundedBorderContainerSkin_SolidColor1_i();
                        if(_loc2_)
                        {
                           addr007d:
                           _loc1_.initialized(this,"overlayRect");
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0093:
                              this.overlayRect = _loc1_;
                              if(_loc2_)
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"overlayRect",this.overlayRect);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0093);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0093);
         }
         §§goto(addr007d);
      }
      
      private function _RoundedBorderContainerSkin_SolidColor1_i() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_)
         {
            this._RoundedBorderContainerSkin_SolidColor1 = _loc1_;
            if(!_loc2_)
            {
               addr003a:
               BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_SolidColor1",this._RoundedBorderContainerSkin_SolidColor1);
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _RoundedBorderContainerSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc3_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Object
                        {
                           return new border_corner();
                        },null,"_RoundedBorderContainerSkin_BitmapImage1.source");
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc3_)
                           {
                              addr0083:
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 addr008a:
                                 §§push(1);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Object
                                    {
                                       return new border_corner();
                                    },null,"_RoundedBorderContainerSkin_BitmapImage2.source");
                                    if(!_loc2_)
                                    {
                                       addr00af:
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!_loc2_)
                                          {
                                             §§push(2);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Object
                                                {
                                                   return new border_corner();
                                                },null,"_RoundedBorderContainerSkin_BitmapImage3.source");
                                                if(_loc3_)
                                                {
                                                   addr00ea:
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      addr00f1:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(3);
                                                         if(_loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():Object
                                                            {
                                                               return new border_corner();
                                                            },null,"_RoundedBorderContainerSkin_BitmapImage4.source");
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr013f:
                                                                     §§push(4);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr014e:
                                                                        §§pop()[§§pop()] = new Binding(this,function():Object
                                                                        {
                                                                           return new border_tile();
                                                                        },null,"_RoundedBorderContainerSkin_BitmapImage5.source");
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0182:
                                                                                 §§push(5);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop()[§§pop()] = new Binding(this,function():Object
                                                                                    {
                                                                                       return new border_tile();
                                                                                    },null,"_RoundedBorderContainerSkin_BitmapImage6.source");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr019f:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr01a6:
                                                                                          §§push(§§pop().§§slot[1]);
                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(6);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§pop()[§§pop()] = new Binding(this,function():Object
                                                                                                {
                                                                                                   return new border_tile();
                                                                                                },null,"_RoundedBorderContainerSkin_BitmapImage7.source");
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      addr01e1:
                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr01f7:
                                                                                                            §§pop()[§§pop()] = new Binding(this,function():Object
                                                                                                            {
                                                                                                               return new border_tile();
                                                                                                            },null,"_RoundedBorderContainerSkin_BitmapImage8.source");
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr020d:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(8);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():uint
                                                                                                                        {
                                                                                                                           return getStyle("backgroundDisabledColor");
                                                                                                                        },null,"_RoundedBorderContainerSkin_SolidColor1.color");
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr0250:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc2_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§goto(addr026c);
                                                                                                                           }
                                                                                                                           §§goto(addr0290);
                                                                                                                        }
                                                                                                                        §§goto(addr028e);
                                                                                                                     }
                                                                                                                     §§goto(addr027d);
                                                                                                                  }
                                                                                                                  §§goto(addr027b);
                                                                                                               }
                                                                                                               §§goto(addr0290);
                                                                                                            }
                                                                                                            §§goto(addr0250);
                                                                                                         }
                                                                                                         §§goto(addr027d);
                                                                                                      }
                                                                                                      §§goto(addr027b);
                                                                                                   }
                                                                                                   addr026c:
                                                                                                   §§goto(addr0292);
                                                                                                }
                                                                                                §§goto(addr028e);
                                                                                             }
                                                                                             §§goto(addr01f7);
                                                                                          }
                                                                                          §§goto(addr0292);
                                                                                       }
                                                                                       §§goto(addr0290);
                                                                                    }
                                                                                    §§goto(addr0250);
                                                                                 }
                                                                                 §§goto(addr01f7);
                                                                              }
                                                                              §§goto(addr0292);
                                                                           }
                                                                           §§goto(addr026c);
                                                                        }
                                                                        §§goto(addr028e);
                                                                     }
                                                                     §§goto(addr01f7);
                                                                  }
                                                                  §§goto(addr0292);
                                                               }
                                                               §§goto(addr01a6);
                                                            }
                                                            §§goto(addr019f);
                                                         }
                                                         §§goto(addr01f7);
                                                      }
                                                      §§goto(addr013f);
                                                   }
                                                   §§goto(addr026c);
                                                }
                                                §§goto(addr020d);
                                             }
                                             §§goto(addr027d);
                                          }
                                          addr0292:
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr027d:
                                             §§pop()[9] = new Binding(this,function():Number
                                             {
                                                return getStyle("disabledOverlayAlpha");
                                             },null,"_RoundedBorderContainerSkin_SolidColor1.alpha");
                                             addr0290:
                                             addr028e:
                                             §§push(result);
                                             addr027b:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr00f1);
                                    }
                                    §§goto(addr028e);
                                 }
                                 §§goto(addr01f7);
                              }
                              §§goto(addr0182);
                           }
                           §§goto(addr00f1);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr014e);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr01e1);
            }
            §§goto(addr00af);
         }
         §§goto(addr0083);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809612678contentGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._809612678contentGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayRect() : Rect
      {
         return this._406820268overlayRect;
      }
      
      public function set overlayRect(param1:Rect) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._406820268overlayRect;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._406820268overlayRect = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayRect",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : SkinnableContainer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:SkinnableContainer) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003f:
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
      }
   }
}

