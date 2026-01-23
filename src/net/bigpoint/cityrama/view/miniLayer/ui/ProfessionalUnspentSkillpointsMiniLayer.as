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
   
   public class ProfessionalUnspentSkillpointsMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
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
      
      public function ProfessionalUnspentSkillpointsMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.width = 540;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.height = 313;
                     if(!_loc2_)
                     {
                        this.showAttentionSign = true;
                        if(_loc1_)
                        {
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProfessionalUnspentSkillpointsMiniLayer_Array1_c);
                           if(!_loc2_)
                           {
                              addr0098:
                              this.addEventListener("addedToStage",this.___ProfessionalUnspentSkillpointsMiniLayer_MiniLayerWindow1_addedToStage);
                              if(_loc1_)
                              {
                                 addr00a9:
                                 this.addEventListener("creationComplete",this.___ProfessionalUnspentSkillpointsMiniLayer_MiniLayerWindow1_creationComplete);
                              }
                           }
                           return;
                        }
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr0098);
               }
            }
            §§goto(addr00a9);
         }
         §§goto(addr0098);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr004a:
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
      
      private function handleAddedPlace() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.spentallskillpoints"),String("rcl.miniLayer.spentallskillpoints.title"));
         }
      }
      
      private function handleCreationCompletePlace(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this.acceptButton);
            if(_loc2_)
            {
               §§push(ResourceManager.getInstance());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop().getString(String("rcl.miniLayer.spentallskillpoints"),String("rcl.miniLayer.spentallskillpoints.button")));
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop().label = §§pop();
                     if(!_loc3_)
                     {
                        addr009b:
                        this.acceptButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.spentallskillpoints"),String("rcl.tooltips.miniLayer.spentallskillpoints.button"));
                        addr0085:
                        addr0074:
                        if(!_loc3_)
                        {
                           addr00a2:
                           this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.spentallskillpoints"),String("rcl.miniLayer.spentallskillpoints.flavour"));
                        }
                     }
                     return;
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0085);
            }
            §§goto(addr0074);
         }
         §§goto(addr00a2);
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_Array1_c() : Array
      {
         return [this._ProfessionalUnspentSkillpointsMiniLayer_VGroup1_i()];
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0030:
               _loc1_.paddingTop = 45;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ProfessionalUnspentSkillpointsMiniLayer_LocaLabel1_i(),this._ProfessionalUnspentSkillpointsMiniLayer_BriskImageDynaLib1_i(),this._ProfessionalUnspentSkillpointsMiniLayer_Group1_c(),this._ProfessionalUnspentSkillpointsMiniLayer_MultistateButton1_i()];
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr009e);
                        }
                        §§goto(addr00d4);
                     }
                  }
                  addr009e:
                  _loc1_.id = "mainGroup";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr00d4);
                           }
                        }
                        §§goto(addr00de);
                     }
                     addr00d4:
                     this.mainGroup = _loc1_;
                     if(!_loc3_)
                     {
                        addr00de:
                        BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                     }
                     §§goto(addr00eb);
                  }
                  addr00eb:
                  return _loc1_;
               }
            }
            §§goto(addr00de);
         }
         §§goto(addr0030);
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.height = 66;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc2_)
                  {
                     _loc1_.id = "flavourText";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 this.flavourText = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                                 §§goto(addr009e);
                              }
                              §§goto(addr0091);
                           }
                           addr009e:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007e);
               }
            }
            §§goto(addr0091);
         }
         §§goto(addr0087);
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr0093);
         }
         addr0037:
         _loc1_.dynaBmpSourceName = "head_line_long";
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "line";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0093);
                     }
                     §§goto(addr009d);
                  }
               }
            }
            addr0093:
            this.line = _loc1_;
            if(_loc2_)
            {
               addr009d:
               BindingManager.executeBindings(this,"line",this.line);
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 28;
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _ProfessionalUnspentSkillpointsMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "icon_attention";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(!_loc2_)
                  {
                     _loc1_.id = "acceptButton";
                     if(_loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0075);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0069);
               }
               addr0075:
               _loc1_.document = this;
               if(_loc3_ || _loc2_)
               {
                  addr0092:
                  this.acceptButton = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr00a4:
                     BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                  }
               }
               §§goto(addr00b1);
            }
            addr00b1:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      public function ___ProfessionalUnspentSkillpointsMiniLayer_MiniLayerWindow1_addedToStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleAddedPlace();
         }
      }
      
      public function ___ProfessionalUnspentSkillpointsMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1480909402acceptButton = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007f);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr007f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr008e);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._3321844line = param1;
                  addr003e:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr003e);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._273241018mainGroup = param1;
                  addr0036:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0036);
      }
   }
}

