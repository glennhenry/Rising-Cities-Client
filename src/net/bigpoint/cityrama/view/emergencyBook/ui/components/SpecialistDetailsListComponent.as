package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class SpecialistDetailsListComponent extends Group
   {
      
      private var _1788676624dataGrid:EmergencyDataGridComponent;
      
      private var _1221270899header:HeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var arrColl:ArrayCollection;
      
      private var _data:EmergencyAssignListVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistDetailsListComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr0038:
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.mxmlContent = [this._SpecialistDetailsListComponent_VGroup1_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib1_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib2_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib3_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr0086:
                     this.addEventListener("creationComplete",this.___SpecialistDetailsListComponent_Group1_creationComplete);
                  }
                  return;
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005e);
                  }
               }
               else
               {
                  addr0064:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr005e:
            return;
         }
         §§goto(addr0064);
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
      
      public function set data(param1:EmergencyAssignListVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._data = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._dataIsDirty = true;
                     if(!_loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:int = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:ProfessionalListInfoVo = null;
         if(_loc6_)
         {
            super.commitProperties();
            if(!(_loc7_ && Boolean(this)))
            {
               if(this._dataIsDirty)
               {
                  if(_loc6_)
                  {
                     this._dataIsDirty = false;
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        addr005b:
                        _loc1_ = -1;
                     }
                     _loc2_ = new ArrayCollection();
                     for each(_loc3_ in this._data.professionalList)
                     {
                        if(_loc6_)
                        {
                           _loc3_.requiredDepartment = this._data.requiredSlotDepartment;
                           if(_loc6_)
                           {
                              _loc3_.requiredSpecialisationRank = this._data.requiredSlotSpecialisationRank;
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              _loc3_.requiredSpecialisationId = this._data.requiredSlotSpecialisationId;
                              if(!(_loc6_ || Boolean(_loc2_)))
                              {
                                 continue;
                              }
                           }
                           §§push(_loc1_);
                           if(_loc6_)
                           {
                              §§push(0);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          §§pop();
                                          if(_loc7_ && Boolean(_loc1_))
                                          {
                                             continue;
                                          }
                                          §§push(_loc3_.operationsLeft);
                                          if(!(_loc7_ && Boolean(_loc2_)))
                                          {
                                             addr0130:
                                             addr012f:
                                             addr012d:
                                             if(§§pop() > 0)
                                             {
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   addr0149:
                                                   _loc1_ = int(_loc2_.source.length);
                                                   if(_loc7_ && Boolean(_loc2_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             addr0158:
                                             _loc2_.addItem(_loc3_);
                                             continue;
                                          }
                                          §§goto(addr0149);
                                       }
                                    }
                                 }
                                 §§goto(addr0130);
                              }
                              §§goto(addr012f);
                           }
                           §§goto(addr012d);
                        }
                        §§goto(addr0158);
                     }
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§push(this.dataGrid);
                        if(_loc6_)
                        {
                           §§pop().dataProvider = _loc2_;
                           if(_loc6_)
                           {
                              addr019d:
                              this.dataGrid.preselectedIndex = _loc1_;
                              addr0199:
                           }
                           §§goto(addr01a1);
                        }
                        §§goto(addr019d);
                     }
                     §§goto(addr0199);
                  }
                  §§goto(addr005b);
               }
               addr01a1:
               return;
            }
         }
         §§goto(addr005b);
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.header);
            if(_loc1_ || Boolean(this))
            {
               §§push(ResourceManager.getInstance());
               §§push("rcl.emergencybook.layer");
               if(!(_loc2_ && _loc2_))
               {
                  §§push("");
                  if(_loc1_)
                  {
                     addr004e:
                     §§push(§§pop() + §§pop());
                     §§push("rcl.emergencybook.layer.specialistDetails");
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(§§pop() + "");
                     }
                  }
                  §§pop().label = §§pop().getString(§§pop(),§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0084:
                     this.header.labelDisplay.styleName = "StatusBarStyleright";
                     addr0080:
                  }
                  return;
               }
               §§goto(addr004e);
            }
            §§goto(addr0084);
         }
         §§goto(addr0080);
      }
      
      public function get data() : EmergencyAssignListVo
      {
         return this._data;
      }
      
      private function _SpecialistDetailsListComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  addr0052:
                  _loc1_.mxmlContent = [this._SpecialistDetailsListComponent_HeaderComponent1_i(),this._SpecialistDetailsListComponent_EmergencyDataGridComponent1_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0078);
            }
            §§goto(addr0052);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_HeaderComponent1_i() : HeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.label = "";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.height = 31;
                  if(!_loc3_)
                  {
                     _loc1_.id = "header";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr0099);
                              }
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0088);
                  }
                  addr0099:
                  this.header = _loc1_;
                  if(!_loc3_)
                  {
                     addr00a3:
                     BindingManager.executeBindings(this,"header",this.header);
                  }
                  §§goto(addr00b0);
               }
               addr00b0:
               return _loc1_;
            }
            §§goto(addr0099);
         }
         §§goto(addr0088);
      }
      
      private function _SpecialistDetailsListComponent_EmergencyDataGridComponent1_i() : EmergencyDataGridComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:EmergencyDataGridComponent = new EmergencyDataGridComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.itemRenderer = this._SpecialistDetailsListComponent_ClassFactory1_c();
                  if(!_loc2_)
                  {
                     _loc1_.id = "dataGrid";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0089:
                                 this.dataGrid = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0093:
                                    BindingManager.executeBindings(this,"dataGrid",this.dataGrid);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0080);
            }
            §§goto(addr0093);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = DataGridItemRenderer;
         }
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005a:
                  _loc1_.top = 70;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr0096);
               }
               addr006c:
               _loc1_.width = 420;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.dynaBmpSourceName = "head_line_long";
                  if(!_loc2_)
                  {
                     addr0096:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr005a);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "good_divider";
               if(_loc2_)
               {
                  _loc1_.height = 158;
                  if(!_loc3_)
                  {
                     _loc1_.left = 110;
                     if(_loc2_)
                     {
                        _loc1_.top = 43;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0075);
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0089);
         }
         addr0075:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0089:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "good_divider";
               if(_loc2_)
               {
                  _loc1_.height = 158;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.left = 285;
                     addr0054:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.top = 43;
                        if(!_loc3_)
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr008a);
                     }
                     addr007e:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr008a:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008e);
                  }
                  addr008e:
                  return _loc1_;
               }
               §§goto(addr0054);
            }
         }
         §§goto(addr008a);
      }
      
      public function ___SpecialistDetailsListComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGrid() : EmergencyDataGridComponent
      {
         return this._1788676624dataGrid;
      }
      
      public function set dataGrid(param1:EmergencyDataGridComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1788676624dataGrid;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0049:
                  this._1788676624dataGrid = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr0082);
               }
               addr006b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0082:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGrid",_loc2_,param1));
                  }
               }
               §§goto(addr0091);
            }
            addr0091:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1221270899header = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

