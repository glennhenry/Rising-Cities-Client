package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.LargeDetailComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentPermissionAvailableSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1438451992permissionIcon:BriskImageDynaLib;
      
      private var _478644083sizeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentPermissionAvailableSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.height = 250;
                  if(_loc2_ || _loc2_)
                  {
                     this.mxmlContent = [this._LargeDetailComponentPermissionAvailableSkin_Group1_c()];
                     if(!(_loc1_ && _loc2_))
                     {
                        addr006b:
                        this.currentState = "normal";
                        if(_loc2_)
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           }),new State({
                              "name":"construct",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"permissionIcon",
                                 "name":"dynaBmpSourceName",
                                 "value":"permission_icon"
                              }),new SetProperty().initializeFromObject({
                                 "target":"backgroundPrint",
                                 "name":"dynaBmpSourceName",
                                 "value":"architect_blueprint_big"
                              })]
                           }),new State({
                              "name":"instant",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"permissionIcon",
                                 "name":"dynaBmpSourceName",
                                 "value":"permission_icon_constructed"
                              }),new SetProperty().initializeFromObject({
                                 "target":"backgroundPrint",
                                 "name":"dynaBmpSourceName",
                                 "value":"architect_blueprint_big"
                              })]
                           }),new State({
                              "name":"instantPremium",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"permissionIcon",
                                 "name":"dynaBmpSourceName",
                                 "value":"permission_icon_constructed"
                              }),new SetProperty().initializeFromObject({
                                 "target":"backgroundPrint",
                                 "name":"dynaBmpSourceName",
                                 "value":"architect_goldprint_big"
                              })]
                           })];
                           addr0077:
                        }
                        §§goto(addr017f);
                     }
                  }
                  §§goto(addr0077);
               }
               addr017f:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0077);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
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
                  addr004c:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0052);
            }
            §§goto(addr004c);
         }
         addr0052:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_ || _loc1_)
            {
               if(this.bottomStickerComponent)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(!_loc1_)
                        {
                           this.bottomStickerComponent.includeInLayout = true;
                           if(!(_loc1_ && Boolean(this)))
                           {
                              this.bottomStickerComponent.visible = true;
                              if(!(_loc2_ || Boolean(this)))
                              {
                                 addr00a8:
                                 this.bottomStickerComponent.visible = false;
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr00a8);
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr00a8);
                        }
                     }
                  }
               }
            }
            addr00af:
            return;
         }
         §§goto(addr00a8);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.setCurrentState(param1,param2);
            if(_loc3_)
            {
               if(param1 == "instantPremium")
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     TweenMax.to(this.image,0,{"glowFilter":{
                        "color":15984814,
                        "alpha":1,
                        "blurX":2,
                        "blurY":2,
                        "strength":20
                     }});
                     addr003b:
                     if(_loc3_ || Boolean(param1))
                     {
                     }
                  }
               }
               else
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":11462643,
                     "alpha":1,
                     "blurX":2,
                     "blurY":2,
                     "strength":20
                  }});
               }
               return;
            }
         }
         §§goto(addr003b);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailComponentPermissionAvailableSkin_Group2_i(),this._LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib2_i(),this._LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib3_i(),this._LargeDetailComponentPermissionAvailableSkin_LocaLabel3_i(),this._LargeDetailComponentPermissionAvailableSkin_BriskMCDynaLib1_c()];
                  addr004b:
                  if(!_loc2_)
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
         §§goto(addr004b);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = -15;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentPermissionAvailableSkin_StickyNoteComponent1_c()];
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        addr0095:
                        §§push(_loc3_);
                        BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                     }
                     else
                     {
                        addr0083:
                        this.bottomStickerComponent = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0095);
                        }
                     }
                     §§goto(addr00a2);
                  }
               }
               §§goto(addr0083);
            }
            else
            {
               _loc1_.document = this;
               if(!_loc2_)
               {
                  §§goto(addr0083);
               }
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.height = 85;
            if(!(_loc2_ && _loc2_))
            {
               addr0045:
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentPermissionAvailableSkin_Array5_c);
                     if(_loc3_)
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr007b);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentPermissionAvailableSkin_VGroup1_c()];
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0042);
               }
            }
            §§goto(addr0060);
         }
         addr0042:
         _loc1_.gap = 0;
         if(_loc2_ || Boolean(this))
         {
            addr0060:
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentPermissionAvailableSkin_LocaLabel1_i(),this._LargeDetailComponentPermissionAvailableSkin_HGroup1_c()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0090);
               }
            }
            §§goto(addr008c);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxWidth = 180;
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.styleName = "elevenDarkCenter";
                  addr003d:
                  if(_loc2_)
                  {
                     _loc1_.id = "itemLabel";
                     if(_loc2_)
                     {
                        addr005f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0090:
                                 this.itemLabel = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr009a);
                           }
                           addr00a7:
                           return _loc1_;
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr009a);
            }
            §§goto(addr003d);
         }
         §§goto(addr007f);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr005a:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._LargeDetailComponentPermissionAvailableSkin_LocaLabel2_i(),this._LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib1_i()];
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0096);
                        }
                        §§goto(addr00a2);
                     }
                     addr0096:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00a2:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a6);
                  }
               }
               addr00a6:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr00a2);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxWidth = 75;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.styleName = "largeDetailComponentSubtextBig";
               if(!_loc2_)
               {
                  _loc1_.id = "amountLabel";
                  if(!_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr007a);
                           }
                           §§goto(addr0084);
                        }
                     }
                     addr007a:
                     this.amountLabel = _loc1_;
                     if(!_loc2_)
                     {
                        addr0084:
                        BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
                     }
                     §§goto(addr0091);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr0065);
            }
         }
         §§goto(addr007a);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_)
            {
               §§goto(addr0040);
            }
            §§goto(addr006a);
         }
         addr0040:
         _loc1_.id = "permissionIcon";
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006a:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr0073:
                     this.permissionIcon = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
                     }
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0073);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0047);
               }
               §§goto(addr00c0);
            }
         }
         addr0047:
         _loc1_.top = 6;
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "architect_blueprint_big";
            if(!_loc2_)
            {
               _loc1_.id = "backgroundPrint";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0091:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr00c0);
                  }
                  addr00ae:
                  this.backgroundPrint = _loc1_;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00c0:
                     BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                  }
                  §§goto(addr00cd);
               }
            }
            §§goto(addr0091);
         }
         addr00cd:
         return _loc1_;
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = -12;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.id = "image";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0074:
                              this.image = _loc1_;
                              if(!_loc3_)
                              {
                                 addr007e:
                                 BindingManager.executeBindings(this,"image",this.image);
                              }
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0074);
                  }
                  addr008b:
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr006b);
         }
         §§goto(addr0074);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxWidth = 60;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "fieldInfoSubHeader2";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0047:
                  _loc1_.top = 176;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.right = 20;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007a:
                        _loc1_.text = "3x3";
                        if(_loc3_)
                        {
                           _loc1_.id = "sizeLabel";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0098:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b8:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00c9:
                                       this.sizeLabel = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00d3:
                                          BindingManager.executeBindings(this,"sizeLabel",this.sizeLabel);
                                       }
                                    }
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00c9);
                           }
                           addr00e0:
                           return _loc1_;
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr00d3);
            }
            §§goto(addr00c9);
         }
         §§goto(addr0047);
      }
      
      private function _LargeDetailComponentPermissionAvailableSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               §§goto(addr003d);
            }
            §§goto(addr0086);
         }
         addr003d:
         _loc1_.top = 0;
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0086:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008a);
               }
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1229015684amountLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1229015684amountLabel = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1299216927backgroundPrint = param1;
                  addr0047:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
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
         §§goto(addr0047);
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
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._100313435image = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
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
         §§goto(addr005b);
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
               if(_loc3_)
               {
                  this._2135689121itemLabel = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0051);
               }
               addr0042:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionIcon() : BriskImageDynaLib
      {
         return this._1438451992permissionIcon;
      }
      
      public function set permissionIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1438451992permissionIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1438451992permissionIcon = param1;
                  if(!_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0053);
            }
            addr007a:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get sizeLabel() : LocaLabel
      {
         return this._478644083sizeLabel;
      }
      
      public function set sizeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._478644083sizeLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._478644083sizeLabel = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006d);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sizeLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : LargeDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004c:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
   }
}

