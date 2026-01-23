package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class MarketMaintanceMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function MarketMaintanceMiniLayer()
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
               if(_loc2_ || _loc2_)
               {
                  this.width = 540;
                  if(_loc2_ || _loc2_)
                  {
                     this.height = 313;
                     if(!_loc1_)
                     {
                        this.showAttentionSign = true;
                        if(_loc2_ || _loc2_)
                        {
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MarketMaintanceMiniLayer_Array1_c);
                           addr0072:
                           if(_loc2_ || _loc2_)
                           {
                              this.addEventListener("addedToStage",this.___MarketMaintanceMiniLayer_MiniLayerWindow1_addedToStage);
                              if(!_loc1_)
                              {
                                 addr00aa:
                                 this.addEventListener("creationComplete",this.___MarketMaintanceMiniLayer_MiniLayerWindow1_creationComplete);
                              }
                           }
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0072);
            }
         }
         addr00b6:
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
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0056);
            }
            addr0043:
            return;
         }
         addr0056:
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
      
      private function handleAddedPlace() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.marketmaintance"),String("rcl.miniLayer.marketmaintance.title"));
         }
      }
      
      private function handleCreationCompletePlace(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this.acceptButton);
            if(_loc2_ || _loc3_)
            {
               §§push(ResourceManager.getInstance());
               if(_loc2_ || Boolean(param1))
               {
                  §§push(§§pop().getString(String("rcl.miniLayer.marketmaintance"),String("rcl.miniLayer.marketmaintance.button")));
                  if(!_loc3_)
                  {
                     §§pop().label = §§pop();
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr00a8:
                        this.acceptButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.marketmaintance"),String("rcl.tooltips.miniLayer.marketmaintance.button"));
                        addr0085:
                        addr007f:
                        addr007b:
                        if(_loc2_ || Boolean(param1))
                        {
                           this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.marketmaintance"),String("rcl.miniLayer.marketmaintance.flavour"));
                        }
                     }
                     return;
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0085);
            }
            §§goto(addr007f);
         }
         §§goto(addr007b);
      }
      
      private function _MarketMaintanceMiniLayer_Array1_c() : Array
      {
         return [this._MarketMaintanceMiniLayer_VGroup1_i()];
      }
      
      private function _MarketMaintanceMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.paddingTop = 45;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.paddingBottom = 45;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00e5);
               }
               addr006d:
               _loc1_.mxmlContent = [this._MarketMaintanceMiniLayer_LocaLabel1_i(),this._MarketMaintanceMiniLayer_BriskImageDynaLib1_i(),this._MarketMaintanceMiniLayer_Group1_c(),this._MarketMaintanceMiniLayer_MultistateButton1_i()];
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "mainGroup";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00ca:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00d3:
                              this.mainGroup = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00e5:
                                 BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00f2);
            }
            §§goto(addr00ca);
         }
         addr00f2:
         return _loc1_;
      }
      
      private function _MarketMaintanceMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.height = 66;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0093);
                              }
                              §§goto(addr00a5);
                           }
                        }
                        addr0093:
                        this.flavourText = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00a5:
                           BindingManager.executeBindings(this,"flavourText",this.flavourText);
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00a5);
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr00a5);
         }
         §§goto(addr008a);
      }
      
      private function _MarketMaintanceMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(!_loc2_)
               {
                  _loc1_.id = "line";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0081);
                           }
                           §§goto(addr008b);
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr008b);
            }
            addr0081:
            this.line = _loc1_;
            if(!_loc2_)
            {
               addr008b:
               BindingManager.executeBindings(this,"line",this.line);
            }
            §§goto(addr0098);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _MarketMaintanceMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 28;
            if(_loc3_ || _loc3_)
            {
               addr0044:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _MarketMaintanceMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 204;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003b:
               _loc1_.imageNameLeft = "icon_attention";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc3_)
                  {
                     _loc1_.id = "acceptButton";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr00a7);
                     }
                     addr0088:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00a7:
                        this.acceptButton = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr00b9);
         }
         §§goto(addr003b);
      }
      
      public function ___MarketMaintanceMiniLayer_MiniLayerWindow1_addedToStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleAddedPlace();
         }
      }
      
      public function ___MarketMaintanceMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationCompletePlace(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1480909402acceptButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1480909402acceptButton = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr006b);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0040:
                  this._800887486flavourText = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0061);
            }
            addr0087:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3321844line;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._3321844line = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._273241018mainGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
   }
}

