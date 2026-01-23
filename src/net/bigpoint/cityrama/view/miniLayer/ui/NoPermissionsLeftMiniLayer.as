package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class NoPermissionsLeftMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _3242771item:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _dataDirty:Boolean;
      
      public function NoPermissionsLeftMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  §§goto(addr0049);
               }
            }
            §§goto(addr0098);
         }
         addr0049:
         this.width = 540;
         if(!_loc2_)
         {
            this.height = 313;
            if(_loc1_ || _loc1_)
            {
               this.showAttentionSign = true;
               if(_loc1_ || _loc1_)
               {
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NoPermissionsLeftMiniLayer_Array1_c);
                  if(!_loc2_)
                  {
                     addr0098:
                     this.addEventListener("creationComplete",this.___NoPermissionsLeftMiniLayer_MiniLayerWindow1_creationComplete);
                  }
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0056);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr006a);
            }
            addr0056:
            return;
         }
         addr006a:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.title = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.title");
            if(_loc2_ || _loc2_)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.flavour");
               if(_loc2_)
               {
                  this.buyButton.toolTip = LocaUtils.getString("rcl.miniLayer.permission","rcl.miniLayer.permission.button.ok.tooltip");
               }
            }
         }
      }
      
      public function set data(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._data = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this._dataDirty = true;
               if(!_loc3_)
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._dataDirty);
               if(_loc1_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           addr0050:
                           §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0063);
                           }
                           §§goto(addr0144);
                        }
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0050);
               }
               addr0063:
               if(Boolean(this._data))
               {
                  if(_loc1_ || _loc2_)
                  {
                     this._dataDirty = false;
                     if(_loc1_ || _loc1_)
                     {
                        this.item.data = this._data;
                        if(_loc1_)
                        {
                           addr009f:
                           §§push(this.buyButton);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§pop().label = LocaUtils.getThousendSeperatedNumber(this._data.price);
                              if(_loc1_)
                              {
                                 §§push(this.buyButton);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this._data);
                                    if(_loc1_)
                                    {
                                       §§pop().priceToConfirm = §§pop().price;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00f2:
                                          §§push(this.buyButton);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr0103:
                                             §§push(this._data);
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr0114:
                                                §§push(§§pop().userCanAfford);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr0134);
                                                   }
                                                   §§goto(addr014f);
                                                }
                                                addr0134:
                                                §§pop().showPlus = §§pop();
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr014f:
                                                   this.buyButton.showSparkle = this._data.userCanAfford;
                                                   addr014c:
                                                   addr0148:
                                                   addr0144:
                                                }
                                                §§goto(addr0152);
                                             }
                                             §§goto(addr014c);
                                          }
                                          §§goto(addr0148);
                                       }
                                       §§goto(addr0152);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00f2);
               }
               addr0152:
               return;
            }
            §§goto(addr00f2);
         }
         §§goto(addr0144);
      }
      
      private function _NoPermissionsLeftMiniLayer_Array1_c() : Array
      {
         return [this._NoPermissionsLeftMiniLayer_VGroup1_c()];
      }
      
      private function _NoPermissionsLeftMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr003a);
            }
            §§goto(addr005a);
         }
         addr003a:
         _loc1_.percentHeight = 100;
         if(!(_loc3_ && _loc3_))
         {
            addr005a:
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.top = 10;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = 10;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_HGroup1_c(),this._NoPermissionsLeftMiniLayer_Group1_c(),this._NoPermissionsLeftMiniLayer_HGroup2_c()];
                     addr0080:
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr00b1);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00c5);
            }
            §§goto(addr0080);
         }
         addr00b1:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr00c5:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_LocaLabel1_i()];
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr0087);
               }
               addr007b:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008b);
            }
         }
         addr008b:
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.maxWidth = 400;
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavourLabel";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0077:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr0088);
                              }
                           }
                           §§goto(addr0092);
                        }
                        addr0088:
                        this.flavourLabel = _loc1_;
                        if(!_loc2_)
                        {
                           addr0092:
                           BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr009f);
            }
            §§goto(addr0077);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 120;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_GridItemComponent1_i(),this._NoPermissionsLeftMiniLayer_BriskImageDynaLib1_c()];
               if(_loc3_ || Boolean(this))
               {
                  addr006a:
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
         }
         §§goto(addr006a);
      }
      
      private function _NoPermissionsLeftMiniLayer_GridItemComponent1_i() : GridItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GridItemComponent = new GridItemComponent();
         if(_loc2_)
         {
            _loc1_.showPrice = false;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.showInfoIcon = false;
               if(_loc2_)
               {
                  _loc1_.showStickyTape = false;
                  if(_loc2_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr00a5);
               }
               addr0057:
               _loc1_.id = "item";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr006a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr008a);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr009b);
               }
               addr008a:
               _loc1_.document = this;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr009b:
                  this.item = _loc1_;
                  if(!_loc3_)
                  {
                     addr00a5:
                     BindingManager.executeBindings(this,"item",this.item);
                  }
               }
               return _loc1_;
            }
            §§goto(addr006a);
         }
         §§goto(addr009b);
      }
      
      private function _NoPermissionsLeftMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = -15;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
                  if(_loc3_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr007b);
               }
               addr0064:
               _loc1_.dynaLibName = "gui_infield_gui_infolayer";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007f);
            }
         }
         addr007f:
         return _loc1_;
      }
      
      private function _NoPermissionsLeftMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr003b:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._NoPermissionsLeftMiniLayer_MultistateButton1_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr007f);
               }
               addr006b:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _NoPermissionsLeftMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 200;
            if(_loc2_)
            {
               addr0032:
               _loc1_.useConfirmation = true;
               if(!_loc3_)
               {
                  _loc1_.libNameRight = "gui_resources_icons";
                  if(!_loc3_)
                  {
                     _loc1_.imageNameRight = "dd_button_icon";
                     if(_loc2_)
                     {
                        addr0060:
                        _loc1_.id = "buyButton";
                        if(_loc2_)
                        {
                           §§goto(addr006b);
                        }
                        §§goto(addr008c);
                     }
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr008c:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr009f);
                        }
                     }
                     addr0095:
                     this.buyButton = _loc1_;
                     if(!_loc3_)
                     {
                        addr009f:
                        BindingManager.executeBindings(this,"buyButton",this.buyButton);
                     }
                     §§goto(addr00ac);
                  }
                  addr00ac:
                  return _loc1_;
               }
            }
            §§goto(addr0060);
         }
         §§goto(addr0032);
      }
      
      public function ___NoPermissionsLeftMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : MultistateButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1271589544buyButton = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0074);
               }
               addr0064:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._949820541flavourLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : GridItemComponent
      {
         return this._3242771item;
      }
      
      public function set item(param1:GridItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3242771item;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3242771item = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
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
   }
}

