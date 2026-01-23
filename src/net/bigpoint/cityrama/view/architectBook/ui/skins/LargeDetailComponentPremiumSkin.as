package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.LargeDetailComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentPremiumSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _369455047permissionFeatureButton:DynamicImageButton;
      
      private var _1438451992permissionIcon:BriskImageDynaLib;
      
      private var _478644083sizeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentPremiumSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.height = 250;
                  if(_loc1_)
                  {
                     this.mxmlContent = [this._LargeDetailComponentPremiumSkin_Group1_c()];
                     if(!_loc2_)
                     {
                        addr005c:
                        this.currentState = "up";
                        if(!_loc2_)
                        {
                           addr0068:
                           this.addEventListener("creationComplete",this.___LargeDetailComponentPremiumSkin_SparkSkin1_creationComplete);
                           if(_loc1_)
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
                              addr0079:
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr0079);
                     }
                     addr00de:
                     return;
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0068);
            }
            §§goto(addr0079);
         }
         §§goto(addr0068);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
               "color":15984814,
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
                  if(!_loc1_)
                  {
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(_loc2_)
                        {
                           this.bottomStickerComponent.includeInLayout = true;
                           if(_loc2_)
                           {
                              addr005a:
                              this.bottomStickerComponent.visible = true;
                              if(_loc1_ && Boolean(this))
                              {
                              }
                           }
                           else
                           {
                              addr0090:
                              this.bottomStickerComponent.visible = false;
                           }
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr0090);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0090);
         }
         §§goto(addr005a);
      }
      
      private function _LargeDetailComponentPremiumSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailComponentPremiumSkin_Group2_i(),this._LargeDetailComponentPremiumSkin_BriskImageDynaLib3_i(),this._LargeDetailComponentPremiumSkin_BriskImageDynaLib4_i(),this._LargeDetailComponentPremiumSkin_LocaLabel2_i(),this._LargeDetailComponentPremiumSkin_BriskMCDynaLib1_c()];
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0085);
                  }
                  §§goto(addr0091);
               }
            }
         }
         addr0085:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0091:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentPremiumSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.bottom = -15;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentPremiumSkin_StickyNoteComponent1_c()];
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr0097);
            }
            §§goto(addr0063);
         }
         addr0058:
         _loc1_.id = "bottomStickerComponent";
         if(!_loc3_)
         {
            addr0063:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     §§goto(addr008d);
                  }
                  §§goto(addr0097);
               }
            }
            addr008d:
            this.bottomStickerComponent = _loc1_;
            if(!_loc3_)
            {
               addr0097:
               BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
            }
            §§goto(addr00a4);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPremiumSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.height = 85;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentPremiumSkin_Array5_c);
                     if(_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0084:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0084);
            }
            §§goto(addr0070);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPremiumSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentPremiumSkin_DynamicImageButton1_i(),this._LargeDetailComponentPremiumSkin_HGroup1_c()];
      }
      
      private function _LargeDetailComponentPremiumSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               addr002b:
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.top = -5;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "permissionFeatureButton";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008c:
                                 this.permissionFeatureButton = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr0096:
                                    BindingManager.executeBindings(this,"permissionFeatureButton",this.permissionFeatureButton);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr0096);
                           }
                           addr00a3:
                           return _loc1_;
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0096);
                  }
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr002b);
      }
      
      private function _LargeDetailComponentPremiumSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.maxWidth = 170;
            if(_loc3_ || _loc3_)
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  §§goto(addr003f);
               }
               §§goto(addr00a0);
            }
            addr003f:
            if(_loc3_ || _loc2_)
            {
               addr005c:
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._LargeDetailComponentPremiumSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentPremiumSkin_LocaLabel1_i(),this._LargeDetailComponentPremiumSkin_BriskImageDynaLib2_i()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00a0:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00ac:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00ac);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _LargeDetailComponentPremiumSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "permission_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "permissionIcon";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00a4);
                        }
                     }
                  }
                  addr009a:
                  this.permissionIcon = _loc1_;
                  if(_loc2_)
                  {
                     addr00a4:
                     BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
                  }
                  §§goto(addr00b1);
               }
            }
            §§goto(addr00a4);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPremiumSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.maxWidth = 75;
            if(_loc2_ || _loc3_)
            {
               _loc1_.styleName = "largeDetailComponentSubtextBig";
               if(_loc2_)
               {
                  _loc1_.id = "itemLabel";
                  if(_loc2_ || Boolean(_loc1_))
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
                              this.itemLabel = _loc1_;
                              if(_loc2_)
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr008f);
            }
         }
         §§goto(addr0070);
      }
      
      private function _LargeDetailComponentPremiumSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "checkmark";
                  if(!_loc2_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0070:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr009e);
                        }
                     }
                     addr008c:
                     this.checkmark = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr009e:
                        BindingManager.executeBindings(this,"checkmark",this.checkmark);
                     }
                     §§goto(addr00ab);
                  }
               }
               §§goto(addr0070);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _LargeDetailComponentPremiumSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 6;
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.dynaBmpSourceName = "architect_goldprint_big";
                     if(_loc3_)
                     {
                        §§goto(addr0066);
                     }
                  }
                  §§goto(addr0071);
               }
               addr0066:
               _loc1_.id = "backgroundPrint";
               if(_loc3_)
               {
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr009a);
                        }
                        §§goto(addr00a4);
                     }
                  }
               }
               §§goto(addr009a);
            }
            addr009a:
            this.backgroundPrint = _loc1_;
            if(!_loc2_)
            {
               addr00a4:
               BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _LargeDetailComponentPremiumSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.verticalCenter = -12;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "image";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0064);
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr007f);
               }
               addr0064:
               _loc1_.document = this;
               if(_loc3_ || _loc3_)
               {
                  addr0075:
                  this.image = _loc1_;
                  if(!_loc2_)
                  {
                     addr007f:
                     BindingManager.executeBindings(this,"image",this.image);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007f);
      }
      
      private function _LargeDetailComponentPremiumSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxWidth = 60;
            if(!_loc2_)
            {
               _loc1_.styleName = "fieldInfoSubHeader2";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.top = 176;
                     if(!_loc2_)
                     {
                        _loc1_.text = "3x3";
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "sizeLabel";
                           if(!_loc2_)
                           {
                              addr007f:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr009f);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr00a8);
            }
            addr009f:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr00a8:
               this.sizeLabel = _loc1_;
               if(!_loc2_)
               {
                  addr00b2:
                  BindingManager.executeBindings(this,"sizeLabel",this.sizeLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _LargeDetailComponentPremiumSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 0;
               §§goto(addr0049);
            }
            §§goto(addr0081);
         }
         addr0049:
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               §§goto(addr0069);
            }
            §§goto(addr0075);
         }
         addr0069:
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(_loc3_)
         {
            addr0075:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0081:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      public function ___LargeDetailComponentPremiumSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr0068);
               }
               addr0051:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
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
               if(_loc3_ || Boolean(param1))
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._399321045checkmark;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0037:
                  this._399321045checkmark = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr0037);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._100313435image = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0079);
               }
               addr0069:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2135689121itemLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2135689121itemLabel = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionFeatureButton() : DynamicImageButton
      {
         return this._369455047permissionFeatureButton;
      }
      
      public function set permissionFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._369455047permissionFeatureButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._369455047permissionFeatureButton = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionFeatureButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionIcon() : BriskImageDynaLib
      {
         return this._1438451992permissionIcon;
      }
      
      public function set permissionIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1438451992permissionIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1438451992permissionIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sizeLabel() : LocaLabel
      {
         return this._478644083sizeLabel;
      }
      
      public function set sizeLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._478644083sizeLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._478644083sizeLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sizeLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : LargeDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0042:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0042);
      }
   }
}

