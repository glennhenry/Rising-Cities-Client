package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.LargeDetailFriendComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailFriendComponentNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _1245745987deleteButton:DynamicImageButton;
      
      private var _2096547611friendLevelStarComponent:FriendLevelStarComponent;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailFriendComponent;
      
      public function LargeDetailFriendComponentNormalSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.height = 250;
                  if(_loc1_)
                  {
                     this.measuredHeight = 240;
                     if(!_loc2_)
                     {
                        this.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_Group1_c()];
                        if(_loc1_)
                        {
                           this.currentState = "up";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0084:
                              this.addEventListener("creationComplete",this.___LargeDetailFriendComponentNormalSkin_SparkSkin1_creationComplete);
                              if(!_loc2_)
                              {
                                 §§goto(addr0095);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0084);
                     }
                     addr0095:
                     this.addEventListener("addedToStage",this.___LargeDetailFriendComponentNormalSkin_SparkSkin1_addedToStage);
                     if(_loc1_ || _loc1_)
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
                        addr00ae:
                     }
                     §§goto(addr0113);
                  }
                  addr0113:
                  return;
               }
               §§goto(addr0084);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0095);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr004b);
                  }
               }
               §§goto(addr0051);
            }
            addr004b:
            return;
         }
         addr0051:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function enableVisuals() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.deleteButton);
            if(_loc1_)
            {
               §§pop().visible = true;
               if(_loc1_)
               {
                  this.deleteButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.removefriend"));
                  §§goto(addr003c);
               }
               §§goto(addr0070);
            }
            addr003c:
            if(!(_loc2_ && _loc1_))
            {
               addr0070:
               this.friendLevelStarComponent.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.level"));
            }
            return;
         }
         §§goto(addr0070);
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
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
      
      private function deleteCall() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.CANCEL_FRIEND_EVENT,true);
         if(_loc3_ || _loc2_)
         {
            _loc1_.friendVo = this.hostComponent.data as FriendVo;
            if(_loc3_ || Boolean(_loc1_))
            {
               dispatchEvent(_loc1_);
               if(_loc3_)
               {
                  addr006d:
                  this.deleteButton.visible = false;
               }
               return;
            }
         }
         §§goto(addr006d);
      }
      
      override protected function measure() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.measure();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.deleteButton);
               if(_loc1_ || _loc2_)
               {
                  §§push(0);
                  if(_loc1_ || _loc1_)
                  {
                     §§pop().measuredWidth = §§pop();
                     if(_loc1_ || _loc2_)
                     {
                        addr0079:
                        this.deleteButton.measuredHeight = 0;
                        addr0077:
                        addr0073:
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0077);
            }
            addr007c:
            return;
         }
         §§goto(addr0073);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               if(this.bottomStickerComponent)
               {
                  if(_loc2_)
                  {
                     addr0047:
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           this.bottomStickerComponent.includeInLayout = true;
                           if(!_loc1_)
                           {
                              addr0074:
                              this.bottomStickerComponent.visible = true;
                              if(_loc1_)
                              {
                                 addr0098:
                                 this.bottomStickerComponent.visible = false;
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr0098);
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0074);
               }
            }
            addr009f:
            return;
         }
         §§goto(addr0047);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_Group2_i(),this._LargeDetailFriendComponentNormalSkin_BriskImageDynaLib1_i(),this._LargeDetailFriendComponentNormalSkin_BriskImageDynaLib2_i(),this._LargeDetailFriendComponentNormalSkin_FriendLevelStarComponent1_i(),this._LargeDetailFriendComponentNormalSkin_DynamicImageButton1_i(),this._LargeDetailFriendComponentNormalSkin_BriskMCDynaLib1_c()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0081:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0081);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = 2;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_StickyNoteComponent1_c()];
               if(!_loc2_)
               {
                  _loc1_.id = "bottomStickerComponent";
                  addr003c:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0084:
                              this.bottomStickerComponent = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0096);
                        }
                        addr00a3:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0067);
            }
            §§goto(addr005b);
         }
         §§goto(addr003c);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 75;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 90;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0059:
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailFriendComponentNormalSkin_Array5_c);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr008b:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0097:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0097);
            }
            §§goto(addr008b);
         }
         §§goto(addr0059);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_Array5_c() : Array
      {
         return [this._LargeDetailFriendComponentNormalSkin_HGroup1_c()];
      }
      
      private function _LargeDetailFriendComponentNormalSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 4;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr007d:
                        _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr008d);
                  }
               }
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.bottom = 0;
            if(!_loc3_)
            {
               _loc1_.width = 180;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.maxWidth = 180;
                  if(_loc2_)
                  {
                     _loc1_.styleName = "largeDetailFriendComponentSubtextBig";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.text = "text text";
                        if(!_loc3_)
                        {
                           addr007c:
                           _loc1_.id = "itemLabel";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           addr00a6:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00af:
                              this.itemLabel = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00c1:
                                 BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                              }
                           }
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr007c);
            }
            addr00ce:
            return _loc1_;
         }
         §§goto(addr00c1);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 6;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "polaroid_friend_big";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006f:
                        _loc1_.id = "backgroundPrint";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00a4);
                                 }
                              }
                              §§goto(addr00b6);
                           }
                        }
                        addr00a4:
                        this.backgroundPrint = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00b6:
                           BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                        }
                        §§goto(addr00c3);
                     }
                  }
                  addr00c3:
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr00b6);
         }
         §§goto(addr006f);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalCenter = -12;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "image";
                  if(!_loc2_)
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr007c);
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               addr007c:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr0085:
                  this.image = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     BindingManager.executeBindings(this,"image",this.image);
                  }
               }
               §§goto(addr00a4);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         if(!_loc2_)
         {
            _loc1_.top = 6;
            if(!_loc2_)
            {
               _loc1_.left = 10;
               if(_loc3_ || _loc3_)
               {
                  addr004a:
                  _loc1_.id = "friendLevelStarComponent";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0077);
                           }
                        }
                        §§goto(addr0081);
                     }
                     addr0077:
                     this.friendLevelStarComponent = _loc1_;
                     if(_loc3_)
                     {
                        addr0081:
                        BindingManager.executeBindings(this,"friendLevelStarComponent",this.friendLevelStarComponent);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr006e);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr004a);
      }
      
      private function _LargeDetailFriendComponentNormalSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "deleteButton";
            if(_loc2_)
            {
               addr002b:
               _loc1_.right = 39;
               if(!_loc3_)
               {
                  _loc1_.top = -2;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.addEventListener("mouseUp",this.__deleteButton_mouseUp);
                     addr0047:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006e:
                        _loc1_.id = "deleteButton";
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00ab);
                                 }
                              }
                              §§goto(addr00b5);
                           }
                           addr00ab:
                           this.deleteButton = _loc1_;
                           if(_loc2_)
                           {
                              addr00b5:
                              BindingManager.executeBindings(this,"deleteButton",this.deleteButton);
                           }
                           return _loc1_;
                        }
                        §§goto(addr009a);
                     }
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr0047);
            }
            §§goto(addr006e);
         }
         §§goto(addr002b);
      }
      
      public function __deleteButton_mouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.deleteCall();
         }
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     §§goto(addr0063);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0097);
            }
            addr0063:
            if(_loc2_ || _loc2_)
            {
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0097:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      public function ___LargeDetailFriendComponentNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___LargeDetailFriendComponentNormalSkin_SparkSkin1_addedToStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.enableVisuals();
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomStickerComponent() : Group
      {
         return this._1277980811bottomStickerComponent;
      }
      
      public function set bottomStickerComponent(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1277980811bottomStickerComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteButton() : DynamicImageButton
      {
         return this._1245745987deleteButton;
      }
      
      public function set deleteButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1245745987deleteButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1245745987deleteButton = param1;
                  if(!_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteButton",_loc2_,param1));
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
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get friendLevelStarComponent() : FriendLevelStarComponent
      {
         return this._2096547611friendLevelStarComponent;
      }
      
      public function set friendLevelStarComponent(param1:FriendLevelStarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2096547611friendLevelStarComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr004e:
                  this._2096547611friendLevelStarComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._100313435image = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
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
               if(!_loc4_)
               {
                  this._2135689121itemLabel = param1;
                  if(!_loc4_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0044);
            }
            addr0062:
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : LargeDetailFriendComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailFriendComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0040:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
   }
}

