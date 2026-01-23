package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
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
   
   public class LargeDetailComponentGoodSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentGoodSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.height = 250;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr004b:
                     this.mxmlContent = [this._LargeDetailComponentGoodSkin_Group1_c()];
                     if(!(_loc1_ && _loc1_))
                     {
                        this.currentState = "up";
                        if(!(_loc1_ && _loc2_))
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
                           addr0081:
                        }
                     }
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr004b);
            }
            addr00e6:
            return;
         }
         §§goto(addr0081);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0052);
                  }
               }
               §§goto(addr0058);
            }
            addr0052:
            return;
         }
         addr0058:
         this.__moduleFactoryInitialized = true;
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
                  if(!(_loc2_ && _loc2_))
                  {
                     if(this.hostComponent.showBottomSticker)
                     {
                        if(_loc1_)
                        {
                           addr0055:
                           this.bottomStickerComponent.includeInLayout = true;
                           if(_loc1_ || _loc2_)
                           {
                              addr0073:
                              this.bottomStickerComponent.visible = true;
                              if(_loc1_ || _loc1_)
                              {
                              }
                           }
                        }
                        else
                        {
                           addr0097:
                           this.bottomStickerComponent.visible = false;
                        }
                     }
                     else
                     {
                        this.bottomStickerComponent.includeInLayout = false;
                        if(!_loc2_)
                        {
                           §§goto(addr0097);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr009e);
            }
            §§goto(addr0055);
         }
         addr009e:
      }
      
      private function _LargeDetailComponentGoodSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._LargeDetailComponentGoodSkin_Group2_i(),this._LargeDetailComponentGoodSkin_BriskImageDynaLib2_i(),this._LargeDetailComponentGoodSkin_BriskImageDynaLib3_i(),this._LargeDetailComponentGoodSkin_BriskMCDynaLib1_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0084);
               }
            }
         }
         addr0088:
         return _loc1_;
      }
      
      private function _LargeDetailComponentGoodSkin_Group2_i() : Group
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
               _loc1_.mxmlContent = [this._LargeDetailComponentGoodSkin_StickyNoteComponent1_c()];
               if(!_loc3_)
               {
                  _loc1_.id = "bottomStickerComponent";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr008a:
                              this.bottomStickerComponent = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        addr00a9:
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr008a);
            }
            §§goto(addr0061);
         }
         §§goto(addr008a);
      }
      
      private function _LargeDetailComponentGoodSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 85;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 90;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentGoodSkin_Array5_c);
                     if(!_loc3_)
                     {
                        §§goto(addr007c);
                     }
                  }
               }
               §§goto(addr0088);
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0088:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008c);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _LargeDetailComponentGoodSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentGoodSkin_HGroup1_c()];
      }
      
      private function _LargeDetailComponentGoodSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     addr0062:
                     _loc1_.horizontalAlign = "right";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._LargeDetailComponentGoodSkin_Group3_c(),this._LargeDetailComponentGoodSkin_LocaLabel1_i(),this._LargeDetailComponentGoodSkin_Group4_c()];
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0062);
            }
            addr0075:
            if(_loc3_)
            {
               addr009c:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _LargeDetailComponentGoodSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 10;
            if(_loc2_ || Boolean(this))
            {
               addr003d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _LargeDetailComponentGoodSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.maxWidth = 170;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "largeDetailComponentSubtext";
               if(_loc3_ || _loc3_)
               {
                  addr005b:
                  _loc1_.id = "itemLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0096:
                              this.itemLabel = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a8);
                        }
                        addr00b5:
                        return _loc1_;
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr006e);
            }
            §§goto(addr0096);
         }
         §§goto(addr005b);
      }
      
      private function _LargeDetailComponentGoodSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._LargeDetailComponentGoodSkin_BriskImageDynaLib1_c()];
            if(_loc2_)
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
      
      private function _LargeDetailComponentGoodSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(_loc2_)
               {
                  _loc1_.right = 10;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0079);
      }
      
      private function _LargeDetailComponentGoodSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
               if(_loc2_)
               {
                  addr0032:
                  _loc1_.top = 6;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "goods_bg_big";
                     if(_loc2_ || _loc3_)
                     {
                        addr005c:
                        _loc1_.id = "backgroundPrint";
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr007b);
                     }
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ac);
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr005c);
               }
               addr009a:
               this.backgroundPrint = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr00ac:
                  BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
               }
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr0032);
      }
      
      private function _LargeDetailComponentGoodSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalCenter = -12;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "image";
                  if(_loc2_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0085);
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0068);
               }
               addr0085:
               this.image = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr0097:
                  BindingManager.executeBindings(this,"image",this.image);
               }
               §§goto(addr00a4);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _LargeDetailComponentGoodSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc3_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0076:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr0076);
            }
            §§goto(addr006a);
         }
         addr007a:
         return _loc1_;
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
               if(_loc4_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr0058);
               }
               addr0049:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0058:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                  }
               }
               §§goto(addr0067);
            }
            addr0067:
            return;
         }
         §§goto(addr0058);
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
               if(_loc4_)
               {
                  this._1277980811bottomStickerComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._100313435image = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
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
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
      }
   }
}

