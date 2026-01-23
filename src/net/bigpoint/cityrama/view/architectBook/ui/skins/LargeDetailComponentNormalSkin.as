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
   
   public class LargeDetailComponentNormalSkin extends SparkSkin implements IStateClient2
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
      
      public function LargeDetailComponentNormalSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               addr002d:
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.height = 250;
                  if(_loc1_ || _loc2_)
                  {
                     this.mxmlContent = [this._LargeDetailComponentNormalSkin_Group1_c()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr00a1);
               }
               addr0074:
               this.currentState = "up";
               if(_loc1_ || Boolean(this))
               {
                  this.addEventListener("creationComplete",this.___LargeDetailComponentNormalSkin_SparkSkin1_creationComplete);
                  if(_loc1_ || _loc2_)
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
                     addr00a1:
                  }
               }
               §§goto(addr0106);
            }
            addr0106:
            return;
         }
         §§goto(addr002d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0042);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               addr0042:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr002f);
            }
            §§goto(addr005d);
         }
         addr002f:
         if(this.bottomStickerComponent)
         {
            if(_loc1_ || Boolean(this))
            {
               if(this.hostComponent.showBottomSticker)
               {
                  if(!_loc2_)
                  {
                     addr005d:
                     this.bottomStickerComponent.includeInLayout = true;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0071:
                        this.bottomStickerComponent.visible = true;
                        if(_loc2_ && Boolean(this))
                        {
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0071);
               }
               else
               {
                  this.bottomStickerComponent.includeInLayout = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00a7:
                     this.bottomStickerComponent.visible = false;
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr00a7);
         }
         addr00ae:
      }
      
      private function _LargeDetailComponentNormalSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_Group2_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib3_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib4_i(),this._LargeDetailComponentNormalSkin_LocaLabel2_i(),this._LargeDetailComponentNormalSkin_BriskMCDynaLib1_c()];
                  §§goto(addr0048);
               }
               §§goto(addr0083);
            }
         }
         addr0048:
         if(!(_loc3_ && _loc3_))
         {
            addr0083:
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
      
      private function _LargeDetailComponentNormalSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = -15;
            if(!_loc2_)
            {
               addr002d:
               _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_StickyNoteComponent1_c()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(_loc3_ || _loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0086:
                              this.bottomStickerComponent = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0086);
                  }
                  addr00a5:
                  return _loc1_;
               }
               §§goto(addr007d);
            }
            §§goto(addr0065);
         }
         §§goto(addr002d);
      }
      
      private function _LargeDetailComponentNormalSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.height = 85;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 90;
               if(_loc3_)
               {
                  §§goto(addr0041);
               }
               §§goto(addr0088);
            }
            §§goto(addr005f);
         }
         addr0041:
         _loc1_.horizontalCenter = 0;
         if(_loc3_ || _loc2_)
         {
            addr005f:
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentNormalSkin_Array5_c);
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0088);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentNormalSkin_DynamicImageButton1_i(),this._LargeDetailComponentNormalSkin_HGroup1_c()];
      }
      
      private function _LargeDetailComponentNormalSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(_loc2_ || _loc3_)
               {
                  addr0051:
                  _loc1_.top = -5;
                  if(_loc2_)
                  {
                     _loc1_.id = "permissionFeatureButton";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr0091);
                              }
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr009b);
               }
               addr0091:
               this.permissionFeatureButton = _loc1_;
               if(!_loc3_)
               {
                  addr009b:
                  BindingManager.executeBindings(this,"permissionFeatureButton",this.permissionFeatureButton);
               }
               §§goto(addr00a8);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _LargeDetailComponentNormalSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxWidth = 170;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr00bb);
               }
            }
            §§goto(addr00c7);
         }
         addr006d:
         _loc1_.verticalAlign = "middle";
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentNormalSkin_LocaLabel1_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib2_i()];
               if(!_loc2_)
               {
                  addr00bb:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00c7:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00cb);
               }
            }
            §§goto(addr00c7);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "permission_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "permissionIcon";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007f:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0088:
                              this.permissionIcon = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
                              }
                           }
                           §§goto(addr00a7);
                        }
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
         §§goto(addr0088);
      }
      
      private function _LargeDetailComponentNormalSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxWidth = 75;
            if(!_loc2_)
            {
               _loc1_.styleName = "largeDetailComponentSubtextBig";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "itemLabel";
                  if(_loc3_ || _loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr0098);
                        }
                     }
                     addr008e:
                     this.itemLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                     }
                     §§goto(addr00a5);
                  }
                  addr00a5:
                  return _loc1_;
               }
               §§goto(addr005c);
            }
            §§goto(addr0098);
         }
         §§goto(addr007d);
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "checkmark";
                  if(!_loc2_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0099);
               }
               addr0065:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr008f);
            }
            §§goto(addr0099);
         }
         addr008f:
         this.checkmark = _loc1_;
         if(_loc3_)
         {
            addr0099:
            BindingManager.executeBindings(this,"checkmark",this.checkmark);
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = 6;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0062:
                     _loc1_.dynaBmpSourceName = "architect_blueprint_big";
                     if(_loc2_)
                     {
                        _loc1_.id = "backgroundPrint";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00aa:
                                    this.backgroundPrint = _loc1_;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                                    }
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0062);
            }
            §§goto(addr00aa);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalCenter = -12;
            if(!_loc2_)
            {
               addr0031:
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0050:
                  _loc1_.id = "image";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr008f);
                        }
                     }
                     addr0085:
                     this.image = _loc1_;
                     if(_loc3_)
                     {
                        addr008f:
                        BindingManager.executeBindings(this,"image",this.image);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr008f);
            }
            §§goto(addr0050);
         }
         §§goto(addr0031);
      }
      
      private function _LargeDetailComponentNormalSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxWidth = 60;
            if(!_loc3_)
            {
               _loc1_.styleName = "fieldInfoSubHeader2";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.top = 176;
                     addr003d:
                     if(_loc2_)
                     {
                        _loc1_.text = "3x3";
                        if(_loc2_)
                        {
                           §§goto(addr005e);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr009d);
               }
               addr005e:
               _loc1_.id = "sizeLabel";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr008a);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0093);
               }
               addr008a:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr0093:
                  this.sizeLabel = _loc1_;
                  if(!_loc3_)
                  {
                     addr009d:
                     BindingManager.executeBindings(this,"sizeLabel",this.sizeLabel);
                  }
               }
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr003d);
      }
      
      private function _LargeDetailComponentNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr0065:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0085);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      public function ___LargeDetailComponentNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1299216927backgroundPrint = param1;
                  addr0036:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
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
         §§goto(addr0036);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
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
               if(_loc3_ || Boolean(this))
               {
                  this._399321045checkmark = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
                        }
                     }
                  }
               }
            }
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._100313435image = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0065);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2135689121itemLabel = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0064);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionFeatureButton() : DynamicImageButton
      {
         return this._369455047permissionFeatureButton;
      }
      
      public function set permissionFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._369455047permissionFeatureButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._369455047permissionFeatureButton = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0046:
                  this._1438451992permissionIcon = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0065);
            }
            addr008c:
            return;
         }
         §§goto(addr0046);
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
               if(_loc3_)
               {
                  this._478644083sizeLabel = param1;
                  addr0036:
                  if(_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sizeLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004d);
            }
            addr0074:
            return;
         }
         §§goto(addr0036);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0076:
      }
   }
}

