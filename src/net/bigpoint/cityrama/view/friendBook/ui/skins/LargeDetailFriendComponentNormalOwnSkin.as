package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.LargeDetailFriendComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailFriendComponentNormalOwnSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _2096547611friendLevelStarComponent:FriendLevelStarComponent;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailFriendComponent;
      
      public function LargeDetailFriendComponentNormalOwnSkin()
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
               if(!(_loc1_ && _loc1_))
               {
                  this.height = 250;
                  if(_loc2_ || Boolean(this))
                  {
                     this.measuredHeight = 240;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0069:
                        this.mxmlContent = [this._LargeDetailFriendComponentNormalOwnSkin_Group1_c()];
                        if(_loc2_)
                        {
                           addr0079:
                           this.currentState = "up";
                           if(_loc2_)
                           {
                              addr0085:
                              this.addEventListener("creationComplete",this.___LargeDetailFriendComponentNormalOwnSkin_SparkSkin1_creationComplete);
                              if(_loc2_)
                              {
                                 states = [new State({
                                    "name":"up",
                                    "overrides":[]
                                 }),new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"over",
                                    "overrides":[]
                                 }),new State({
                                    "name":"down",
                                    "overrides":[]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 })];
                              }
                           }
                           §§goto(addr00fb);
                        }
                        §§goto(addr0085);
                     }
                  }
                  addr00fb:
                  return;
               }
               §§goto(addr0079);
            }
            §§goto(addr0069);
         }
         §§goto(addr0079);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            TweenMax.to(this.image,0,{"glowFilter":{
               "color":11462643,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this.bottomStickerComponent)
               {
                  if(_loc2_)
                  {
                     addr003f:
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(!_loc1_)
                        {
                           this.bottomStickerComponent.includeInLayout = true;
                           if(!_loc1_)
                           {
                              this.bottomStickerComponent.visible = true;
                              if(_loc1_)
                              {
                                 addr0080:
                                 this.bottomStickerComponent.visible = false;
                              }
                           }
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(!_loc1_)
                        {
                           §§goto(addr0080);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr0080);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalOwnSkin_Group2_i(),this._LargeDetailFriendComponentNormalOwnSkin_BriskImageDynaLib1_i(),this._LargeDetailFriendComponentNormalOwnSkin_BriskImageDynaLib2_i(),this._LargeDetailFriendComponentNormalOwnSkin_FriendLevelStarComponent1_i(),this._LargeDetailFriendComponentNormalOwnSkin_BriskMCDynaLib1_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0085);
                  }
                  §§goto(addr0091);
               }
               addr0085:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0091:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0091);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.bottom = 2;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalOwnSkin_StickyNoteComponent1_c()];
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr007f:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0088:
                              this.bottomStickerComponent = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr007f);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 75;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailFriendComponentNormalOwnSkin_Array5_c);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
               }
               §§goto(addr0084);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_Array5_c() : Array
      {
         return [this._LargeDetailFriendComponentNormalOwnSkin_HGroup1_c()];
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 4;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr005c:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0073:
                        _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalOwnSkin_LocaLabel1_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0097:
                                 _loc1_.document = this;
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr0097);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr005c);
         }
         §§goto(addr0097);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.bottom = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 180;
               if(_loc3_)
               {
                  _loc1_.maxWidth = 180;
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.styleName = "largeDetailFriendComponentSubtextBig";
                     if(_loc3_)
                     {
                        addr006a:
                        _loc1_.text = "text text";
                        if(_loc3_)
                        {
                           _loc1_.id = "itemLabel";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00b9:
                                       this.itemLabel = _loc1_;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00cb:
                                          BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00cb);
               }
               addr00d8:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr006a);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 6;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "polaroid_myself_big";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006c:
                        _loc1_.id = "backgroundPrint";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0083:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00a0);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           addr00a0:
                           this.backgroundPrint = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00b2:
                              BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0083);
                  }
                  addr00bf:
                  return _loc1_;
               }
               §§goto(addr00a0);
            }
            §§goto(addr0083);
         }
         §§goto(addr006c);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = -12;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "image";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr006c);
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr009d);
               }
            }
            addr006c:
            _loc1_.document = this;
            if(!(_loc3_ && _loc2_))
            {
               addr008b:
               this.image = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr009d:
                  BindingManager.executeBindings(this,"image",this.image);
               }
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 6;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = 10;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "friendLevelStarComponent";
                  if(_loc3_)
                  {
                     addr0064:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0096:
                              this.friendLevelStarComponent = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"friendLevelStarComponent",this.friendLevelStarComponent);
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a0);
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr00a0);
      }
      
      private function _LargeDetailFriendComponentNormalOwnSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.top = 0;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     addr005a:
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0093);
            }
            §§goto(addr005a);
         }
         addr0093:
         return _loc1_;
      }
      
      public function ___LargeDetailFriendComponentNormalOwnSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004e:
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0069);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomStickerComponent() : Group
      {
         return this._1277980811bottomStickerComponent;
      }
      
      public function set bottomStickerComponent(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1277980811bottomStickerComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0051);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get friendLevelStarComponent() : FriendLevelStarComponent
      {
         return this._2096547611friendLevelStarComponent;
      }
      
      public function set friendLevelStarComponent(param1:FriendLevelStarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2096547611friendLevelStarComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr004a:
                  this._2096547611friendLevelStarComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0063);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
            addr0072:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100313435image;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004d:
                  this._100313435image = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2135689121itemLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr004f:
                  this._2135689121itemLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : LargeDetailFriendComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailFriendComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr003d:
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr003d);
      }
   }
}

