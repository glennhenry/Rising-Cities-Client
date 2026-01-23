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
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentLockedSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentLockedSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.height = 250;
                  if(_loc1_)
                  {
                     addr004a:
                     this.mxmlContent = [this._LargeDetailComponentLockedSkin_Group1_c()];
                     if(_loc1_)
                     {
                        addr0064:
                        this.currentState = "up";
                        if(_loc1_)
                        {
                           this.addEventListener("creationComplete",this.___LargeDetailComponentLockedSkin_SparkSkin1_creationComplete);
                           if(!(_loc2_ && _loc1_))
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
                              addr0089:
                           }
                        }
                        §§goto(addr00ee);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr0064);
            }
            addr00ee:
            return;
         }
         §§goto(addr004a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
               }
               §§goto(addr004f);
            }
            addr0049:
            return;
         }
         addr004f:
         this.__moduleFactoryInitialized = true;
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
         if(_loc3_ || _loc2_)
         {
            TweenMax.to(this.image,0,{
               "colorMatrixFilter":{"saturation":0},
               "colorTransform":{
                  "tint":14473659,
                  "tintAmount":0.74
               }
            });
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
            if(_loc1_)
            {
               if(this.bottomStickerComponent)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(!_loc2_)
                        {
                           addr0055:
                           this.bottomStickerComponent.includeInLayout = true;
                           if(_loc1_ || _loc2_)
                           {
                              addr0073:
                              this.bottomStickerComponent.visible = true;
                              if(_loc2_)
                              {
                              }
                           }
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(!_loc2_)
                        {
                           this.bottomStickerComponent.visible = false;
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0073);
               }
               addr0096:
               return;
            }
            §§goto(addr0073);
         }
         §§goto(addr0055);
      }
      
      private function _LargeDetailComponentLockedSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailComponentLockedSkin_Group2_i(),this._LargeDetailComponentLockedSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentLockedSkin_BriskImageDynaLib2_i(),this._LargeDetailComponentLockedSkin_BriskImageDynaLib3_c(),this._LargeDetailComponentLockedSkin_BriskMCDynaLib1_c()];
                  addr0051:
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0098:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009c);
                  }
               }
               §§goto(addr0098);
            }
            §§goto(addr0051);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _LargeDetailComponentLockedSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.bottom = -15;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._LargeDetailComponentLockedSkin_StickyNoteComponent1_c()];
               if(!_loc3_)
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0086:
                              this.bottomStickerComponent = _loc1_;
                              if(_loc2_)
                              {
                                 BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                              }
                           }
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0086);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _LargeDetailComponentLockedSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.height = 85;
            if(_loc2_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentLockedSkin_Array5_c);
                     addr0051:
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr008e);
                  }
               }
               addr007a:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0092);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _LargeDetailComponentLockedSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentLockedSkin_HGroup1_c()];
      }
      
      private function _LargeDetailComponentLockedSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._LargeDetailComponentLockedSkin_LocaLabel1_i()];
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00a0);
                  }
               }
               §§goto(addr009c);
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _LargeDetailComponentLockedSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "largeDetailComponentSubtext";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "itemLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007b:
                           this.itemLabel = _loc1_;
                           if(_loc2_)
                           {
                              addr0085:
                              BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0092);
            }
            §§goto(addr0085);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _LargeDetailComponentLockedSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = 6;
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "architect_locked_big";
                     if(!_loc2_)
                     {
                        _loc1_.id = "backgroundPrint";
                        if(_loc3_)
                        {
                           addr0070:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr0091);
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00ac);
            }
            addr0091:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr009a:
               this.backgroundPrint = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00ac:
                  BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
               }
            }
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      private function _LargeDetailComponentLockedSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalCenter = -12;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr0048:
                  _loc1_.id = "image";
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0074);
               }
               addr0053:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0074:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr007d);
                     }
                     §§goto(addr0087);
                  }
               }
               addr007d:
               this.image = _loc1_;
               if(!_loc2_)
               {
                  addr0087:
                  BindingManager.executeBindings(this,"image",this.image);
               }
               §§goto(addr0094);
            }
            §§goto(addr0048);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _LargeDetailComponentLockedSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
               _loc1_.verticalCenter = -12;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = -2;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_blocked";
                     if(_loc3_)
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr008d);
                  }
               }
            }
            addr0079:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr008d:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr008d);
      }
      
      private function _LargeDetailComponentLockedSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
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
               _loc1_.top = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     addr0063:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0063);
      }
      
      public function ___LargeDetailComponentLockedSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0060);
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
               if(_loc3_ || _loc3_)
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003e:
                  this._100313435image = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005c);
            }
            addr0082:
            return;
         }
         §§goto(addr003e);
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
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2135689121itemLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
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
         §§goto(addr006b);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
   }
}

