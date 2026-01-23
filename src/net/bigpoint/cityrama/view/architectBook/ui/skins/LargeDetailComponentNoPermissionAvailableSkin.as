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
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentNoPermissionAvailableSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _478644083sizeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentNoPermissionAvailableSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.height = 250;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_Group1_c()];
                     if(_loc2_)
                     {
                        addr005b:
                        this.currentState = "normal";
                        if(_loc2_ || _loc2_)
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"itemLabel",
                                 "name":"styleName",
                                 "value":"orangeThirteenCenter"
                              })]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           }),new State({
                              "name":"premium",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"itemLabel",
                                 "name":"styleName",
                                 "value":"orangeThirteenCenter"
                              }),new SetProperty().initializeFromObject({
                                 "target":"backgroundPrint",
                                 "name":"dynaBmpSourceName",
                                 "value":"architect_goldprint_big"
                              })]
                           }),new State({
                              "name":"unlimited",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"itemLabel",
                                 "name":"styleName",
                                 "value":"blueThirteenCenter"
                              }),new SetProperty().initializeFromObject({
                                 "target":"backgroundPrint",
                                 "name":"dynaBmpSourceName",
                                 "value":"architect_blueprint_big"
                              })]
                           })];
                           addr006f:
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr006f);
                  }
                  addr014b:
                  return;
               }
               §§goto(addr006f);
            }
            §§goto(addr005b);
         }
         §§goto(addr006f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0043:
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this.bottomStickerComponent)
               {
                  if(!_loc1_)
                  {
                     addr002d:
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.bottomStickerComponent.includeInLayout = true;
                           if(_loc2_)
                           {
                              addr005a:
                              this.bottomStickerComponent.visible = true;
                              if(_loc1_ && _loc1_)
                              {
                                 addr0090:
                                 this.bottomStickerComponent.visible = false;
                              }
                           }
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0090);
                        }
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0097);
            }
            §§goto(addr002d);
         }
         addr0097:
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super.setCurrentState(param1,param2);
            if(!_loc4_)
            {
               if(param1 == "premium")
               {
                  if(_loc3_ || Boolean(this))
                  {
                     TweenMax.to(this.image,0,{"glowFilter":{
                        "color":15984814,
                        "alpha":1,
                        "blurX":2,
                        "blurY":2,
                        "strength":20
                     }});
                     addr0044:
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
               §§goto(addr00c6);
            }
            §§goto(addr0044);
         }
         addr00c6:
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Group1_c() : Group
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
                  _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_Group2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_LocaLabel2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskMCDynaLib1_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0081);
                  }
               }
            }
            §§goto(addr0095);
         }
         addr0081:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0095:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.bottom = -15;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_StickyNoteComponent1_c()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(_loc3_ || Boolean(this))
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0095);
            }
            §§goto(addr006d);
         }
         addr0095:
         this.bottomStickerComponent = _loc1_;
         if(_loc3_)
         {
            addr009f:
            BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.height = 85;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && _loc2_))
               {
                  addr004f:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     addr0065:
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentNoPermissionAvailableSkin_Array5_c);
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0065);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentNoPermissionAvailableSkin_VGroup1_c()];
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0059);
         }
         addr0030:
         _loc1_.percentHeight = 100;
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0059:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0081);
                  }
                  §§goto(addr0091);
               }
            }
         }
         addr0081:
         _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_LocaLabel1_i()];
         if(!_loc3_)
         {
            addr0091:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxWidth = 180;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004f:
                  _loc1_.id = "itemLabel";
                  if(!_loc2_)
                  {
                     addr005a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0066);
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               addr0066:
               _loc1_.document = this;
               if(!(_loc2_ && _loc3_))
               {
                  addr0085:
                  this.itemLabel = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                  }
               }
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr004f);
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = 6;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "architect_blueprint_big";
                     if(!_loc3_)
                     {
                        _loc1_.id = "backgroundPrint";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0073:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr008f);
                                 }
                              }
                              §§goto(addr00a1);
                           }
                           addr008f:
                           this.backgroundPrint = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr00a1:
                              BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr008f);
               }
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.verticalCenter = -12;
            if(!_loc2_)
            {
               §§goto(addr0029);
            }
            §§goto(addr0049);
         }
         addr0029:
         _loc1_.horizontalCenter = 0;
         if(!_loc2_)
         {
            _loc1_.id = "image";
            if(!_loc2_)
            {
               addr0049:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr006b);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr006b:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr0074:
            this.image = _loc1_;
            if(_loc3_)
            {
               BindingManager.executeBindings(this,"image",this.image);
            }
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxWidth = 60;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "fieldInfoSubHeader2";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = 176;
                  if(_loc3_)
                  {
                     _loc1_.right = 20;
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.text = "3x3";
                        if(_loc3_)
                        {
                           addr0072:
                           _loc1_.id = "sizeLabel";
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr00af);
                                    }
                                 }
                                 §§goto(addr00c1);
                              }
                              addr00af:
                              this.sizeLabel = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c1:
                                 BindingManager.executeBindings(this,"sizeLabel",this.sizeLabel);
                              }
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr00af);
                     }
                     addr00ce:
                     return _loc1_;
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00af);
            }
            §§goto(addr0072);
         }
         §§goto(addr00af);
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = 0;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr0046:
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr007a);
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
         }
         addr007a:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._100313435image = param1;
                  if(!_loc4_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._2135689121itemLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._478644083sizeLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sizeLabel",_loc2_,param1));
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
         §§goto(addr0074);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
   }
}

