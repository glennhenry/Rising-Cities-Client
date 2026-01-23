package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentProfessionalListVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.SpecialistSlotListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class DepartmentSlotComponent extends VGroup
   {
      
      private var _1449269008headerComponent:HeaderComponent;
      
      private var _317481311professionalAmount:LocaLabel;
      
      private var _1795991707professionalList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentProfessionalListVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DepartmentSlotComponent()
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
               if(_loc2_ || _loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(!(_loc1_ && _loc2_))
                     {
                        this.verticalAlign = "top";
                        if(_loc2_ || Boolean(this))
                        {
                           addr007a:
                           this.horizontalAlign = "center";
                           if(!_loc1_)
                           {
                              addr0084:
                              this.mxmlContent = [this._DepartmentSlotComponent_HeaderComponent1_i(),this._DepartmentSlotComponent_LocaLabel1_i(),this._DepartmentSlotComponent_List1_i()];
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0084);
            }
            addr009b:
            return;
         }
         §§goto(addr007a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr005f);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr005f:
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
      
      public function set data(param1:DepartmentProfessionalListVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._dataIsDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr005e:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr005e);
            }
            addr0063:
            return;
         }
         §§goto(addr005e);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:ArrayCollection = null;
         var _loc2_:ProfessionalDepartmentSlotVo = null;
         if(_loc6_ || Boolean(_loc2_))
         {
            super.commitProperties();
            if(!_loc5_)
            {
               if(this._dataIsDirty)
               {
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     this._dataIsDirty = false;
                  }
                  addr0055:
                  _loc1_ = new ArrayCollection();
                  for each(_loc2_ in this._data.professionalSlots)
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc1_.addItem(_loc2_);
                     }
                  }
                  if(_loc6_)
                  {
                     this.professionalList.dataProvider = _loc1_;
                     if(!_loc5_)
                     {
                        this.professionalAmount.text = this._data.flavourText;
                        if(_loc6_)
                        {
                           addr00c9:
                           §§push(this.headerComponent);
                           if(_loc6_ || Boolean(this))
                           {
                              §§pop().label = this._data.headerText;
                              if(!_loc5_)
                              {
                                 addr00fd:
                                 this.headerComponent.icon = new BriskDynaVo(this._data.headerIconLib,this._data.headerIconImg);
                                 addr00f9:
                              }
                              §§goto(addr0113);
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr00c9);
                  }
               }
               addr0113:
               return;
            }
         }
         §§goto(addr0055);
      }
      
      private function _DepartmentSlotComponent_HeaderComponent1_i() : HeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 94;
            if(!_loc3_)
            {
               addr0036:
               _loc1_.label = "";
               if(!_loc3_)
               {
                  _loc1_.id = "headerComponent";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008c:
                              this.headerComponent = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                              }
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0096);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _DepartmentSlotComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "professionalAmount";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.text = "";
                  if(!_loc3_)
                  {
                     addr0058:
                     _loc1_.id = "professionalAmount";
                     if(_loc2_ || _loc3_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0094:
                                 this.professionalAmount = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009e:
                                    BindingManager.executeBindings(this,"professionalAmount",this.professionalAmount);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                        }
                        §§goto(addr0094);
                     }
                  }
                  addr00ab:
                  return _loc1_;
               }
               §§goto(addr0058);
            }
            §§goto(addr009e);
         }
         §§goto(addr006b);
      }
      
      private function _DepartmentSlotComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr003a:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.itemRenderer = this._DepartmentSlotComponent_ClassFactory1_c();
                  if(_loc3_)
                  {
                     addr005e:
                     _loc1_.setStyle("skinClass",SpecialistSlotListSkin);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0075:
                        _loc1_.id = "professionalList";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00b3:
                                    this.professionalList = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"professionalList",this.professionalList);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr005e);
            }
            §§goto(addr00b3);
         }
         §§goto(addr003a);
      }
      
      private function _DepartmentSlotComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = DepartmentSlotItemrenderer;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : HeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:HeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1449269008headerComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1449269008headerComponent = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalAmount() : LocaLabel
      {
         return this._317481311professionalAmount;
      }
      
      public function set professionalAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._317481311professionalAmount;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._317481311professionalAmount = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr0050);
               }
               addr0040:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalAmount",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalList() : List
      {
         return this._1795991707professionalList;
      }
      
      public function set professionalList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1795991707professionalList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1795991707professionalList = param1;
                  addr003f:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003f);
      }
   }
}

