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
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class PlacementImpossibleMiniLayer extends MiniLayerWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && PlacementImpossibleMiniLayer))
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
      
      private var _1446441988acceptNoPlacement:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PlacementImpossibleMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.width = 540;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0064:
                     this.height = 313;
                     if(_loc1_)
                     {
                        this.showAttentionSign = true;
                        if(_loc1_)
                        {
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PlacementImpossibleMiniLayer_Array1_c);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00a0:
                              this.addEventListener("addedToStage",this.___PlacementImpossibleMiniLayer_MiniLayerWindow1_addedToStage);
                              if(!_loc2_)
                              {
                                 addr00b1:
                                 this.addEventListener("creationComplete",this.___PlacementImpossibleMiniLayer_MiniLayerWindow1_creationComplete);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00a0);
                  }
               }
               §§goto(addr00b1);
            }
            §§goto(addr0064);
         }
         addr00bd:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0034:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0034);
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
      
      private function handleAddedPlace() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.title = LocaUtils.getString("rcl.miniLayer.placement","rcl.miniLayer.placement.title");
         }
      }
      
      private function handleCreationCompletePlace(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.acceptNoPlacement);
            if(!_loc2_)
            {
               §§push(ResourceManager.getInstance());
               if(!_loc2_)
               {
                  §§push(§§pop().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.button")));
                  if(_loc3_)
                  {
                     §§pop().label = §§pop();
                     if(_loc3_)
                     {
                        addr008d:
                        this.acceptNoPlacement.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.placement.button"));
                        addr0078:
                        addr0072:
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0078);
            }
            §§goto(addr0072);
         }
         addr008f:
      }
      
      private function _PlacementImpossibleMiniLayer_Array1_c() : Array
      {
         return [this._PlacementImpossibleMiniLayer_VGroup1_i()];
      }
      
      private function _PlacementImpossibleMiniLayer_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.paddingTop = 45;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.paddingBottom = 45;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr00e9);
               }
               addr0057:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._PlacementImpossibleMiniLayer_LocaLabel1_i(),this._PlacementImpossibleMiniLayer_BriskImageDynaLib1_i(),this._PlacementImpossibleMiniLayer_Group1_c(),this._PlacementImpossibleMiniLayer_MultistateButton1_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "mainGroup";
                     if(_loc3_)
                     {
                        addr00a5:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00d7);
                              }
                              §§goto(addr00e9);
                           }
                        }
                        addr00d7:
                        this.mainGroup = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00e9:
                           BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00e9);
                  }
               }
               addr00f6:
               return _loc1_;
            }
            §§goto(addr00d7);
         }
         §§goto(addr00a5);
      }
      
      private function _PlacementImpossibleMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.height = 66;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_ || Boolean(this))
               {
                  addr003b:
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc2_)
                  {
                     addr0052:
                     _loc1_.id = "flavourText";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr008d:
                                 this.flavourText = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                           }
                           §§goto(addr00ac);
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               addr00ac:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr003b);
      }
      
      private function _PlacementImpossibleMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "line";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0092);
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0075);
               }
               addr0092:
               this.line = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00a4:
                  BindingManager.executeBindings(this,"line",this.line);
               }
               §§goto(addr00b1);
            }
            addr00b1:
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _PlacementImpossibleMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 28;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr003f:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _PlacementImpossibleMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 204;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.imageNameLeft = "icon_attention";
               if(_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "acceptNoPlacement";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0070);
            }
            §§goto(addr00b3);
         }
         addr0070:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc2_)
            {
               addr0084:
               _loc1_.document = this;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr00a1);
               }
            }
            §§goto(addr00b3);
         }
         addr00a1:
         this.acceptNoPlacement = _loc1_;
         if(_loc3_ || _loc2_)
         {
            addr00b3:
            BindingManager.executeBindings(this,"acceptNoPlacement",this.acceptNoPlacement);
         }
         return _loc1_;
      }
      
      public function ___PlacementImpossibleMiniLayer_MiniLayerWindow1_addedToStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleAddedPlace();
         }
      }
      
      public function ___PlacementImpossibleMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleCreationCompletePlace(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptNoPlacement() : MultistateButton
      {
         return this._1446441988acceptNoPlacement;
      }
      
      public function set acceptNoPlacement(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1446441988acceptNoPlacement;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1446441988acceptNoPlacement = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptNoPlacement",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3321844line;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._3321844line = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
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
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._273241018mainGroup = param1;
                  addr003f:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
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
         §§goto(addr003f);
      }
   }
}

