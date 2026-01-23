package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySlotListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class EmergencySlotComponent extends VGroup
   {
      
      private var _1449269008headerComponent:HeaderComponent;
      
      private var _1872820157requiredSpecialists:LocaLabel;
      
      private var _1711535228specialistSlots:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function EmergencySlotComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_)
            {
               addr0025:
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.percentWidth = 100;
                  if(_loc1_)
                  {
                     this.percentHeight = 100;
                     if(!_loc2_)
                     {
                        this.gap = 2;
                        if(_loc1_ || _loc2_)
                        {
                           this.verticalAlign = "top";
                           if(_loc1_ || Boolean(this))
                           {
                              addr0081:
                              this.horizontalAlign = "center";
                              if(_loc1_ || Boolean(this))
                              {
                                 §§goto(addr009d);
                              }
                           }
                           §§goto(addr00b9);
                        }
                     }
                     addr009d:
                     this.mxmlContent = [this._EmergencySlotComponent_HeaderComponent1_i(),this._EmergencySlotComponent_LocaLabel1_i(),this._EmergencySlotComponent_List1_i()];
                     if(!_loc2_)
                     {
                        addr00b9:
                        this.addEventListener("creationComplete",this.___EmergencySlotComponent_VGroup1_creationComplete);
                     }
                     §§goto(addr00c5);
                  }
               }
               §§goto(addr0081);
            }
            addr00c5:
            return;
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr0046:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:EmergencyAssignVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(param1))
               {
                  this._data = param1;
                  if(!_loc3_)
                  {
                     addr0049:
                     this._dataIsDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0049);
            }
         }
         addr0060:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:ProfessionalSlotVo = null;
         if(!_loc8_)
         {
            super.commitProperties();
            if(!_loc8_)
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc8_ && Boolean(this)))
                  {
                     this._dataIsDirty = false;
                  }
                  addr0052:
                  _loc1_ = new ArrayCollection();
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§push(int(this._data.professionalSlots.length));
                     if(_loc7_)
                     {
                        _loc2_ = §§pop();
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              addr009a:
                              _loc3_ = §§pop();
                              addr009b:
                              §§push(0);
                           }
                           for each(_loc4_ in this._data.professionalSlots)
                           {
                              if(!_loc8_)
                              {
                                 _loc1_.addItem(_loc4_);
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_.empty)
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc3_++;
                           }
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              this.specialistSlots.dataProvider = _loc1_;
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 this.requiredSpecialists.text = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.specialistSelectionRequired")).replace("{0}",_loc3_).replace("{1}",_loc2_);
                              }
                           }
                           §§goto(addr0149);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr009b);
               }
               addr0149:
               return;
            }
         }
         §§goto(addr0052);
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.headerComponent);
            if(_loc2_ || Boolean(this))
            {
               §§pop().label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.specialistSelection"));
               if(!(_loc1_ && _loc1_))
               {
                  addr006a:
                  this.headerComponent.labelDisplay.styleName = "StatusBarStyleright";
                  addr0066:
               }
               return;
            }
            §§goto(addr006a);
         }
         §§goto(addr0066);
      }
      
      private function _EmergencySlotComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "headerComponent";
               if(!(_loc2_ && _loc2_))
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0081:
                           this.headerComponent = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0093:
                              BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                           }
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0081);
               }
               addr00a0:
               return _loc1_;
            }
            §§goto(addr0058);
         }
         §§goto(addr0093);
      }
      
      private function _EmergencySlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.styleName = "specialistRequirements";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0053);
               }
            }
            §§goto(addr008f);
         }
         addr0053:
         _loc1_.id = "requiredSpecialists";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr008f:
                     this.requiredSpecialists = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        BindingManager.executeBindings(this,"requiredSpecialists",this.requiredSpecialists);
                     }
                  }
                  §§goto(addr00ae);
               }
            }
            §§goto(addr008f);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _EmergencySlotComponent_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.itemRenderer = this._EmergencySlotComponent_ClassFactory1_c();
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.setStyle("skinClass",EmergencySlotListSkin);
                     addr0053:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "specialistSlots";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr00aa:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00c5);
                              }
                           }
                           addr00b3:
                           this.specialistSlots = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr00c5:
                              BindingManager.executeBindings(this,"specialistSlots",this.specialistSlots);
                           }
                           §§goto(addr00d2);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  addr00d2:
                  return _loc1_;
               }
            }
            §§goto(addr00c5);
         }
         §§goto(addr0053);
      }
      
      private function _EmergencySlotComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = SpecialistSlotItemrenderer;
         }
         return _loc1_;
      }
      
      public function ___EmergencySlotComponent_VGroup1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : HeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:HeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1449269008headerComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1449269008headerComponent = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
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
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredSpecialists() : LocaLabel
      {
         return this._1872820157requiredSpecialists;
      }
      
      public function set requiredSpecialists(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1872820157requiredSpecialists;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1872820157requiredSpecialists = param1;
                  if(!_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredSpecialists",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get specialistSlots() : List
      {
         return this._1711535228specialistSlots;
      }
      
      public function set specialistSlots(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1711535228specialistSlots;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1711535228specialistSlots = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialistSlots",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
   }
}

