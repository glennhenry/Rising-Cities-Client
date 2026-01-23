package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.GradeVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.SeparatorList;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestTaskListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.CheckBox;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class CoverageInfoComponent extends Group
   {
      
      private var _1536861091checkBox:CheckBox;
      
      private var _262377712departmentList:SeparatorList;
      
      private var _776838274emergencyHeader:HeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean;
      
      public function CoverageInfoComponent()
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
               if(!_loc1_)
               {
                  §§goto(addr003a);
               }
               §§goto(addr0064);
            }
            §§goto(addr0058);
         }
         addr003a:
         this.percentWidth = 100;
         if(!_loc1_)
         {
            this.percentHeight = 100;
            if(!_loc1_)
            {
               addr0058:
               this.maxWidth = 530;
               if(_loc2_)
               {
                  addr0064:
                  this.mxmlContent = [this._CoverageInfoComponent_VGroup1_c()];
                  if(_loc2_)
                  {
                     addr0074:
                     this.addEventListener("creationComplete",this.___CoverageInfoComponent_Group1_creationComplete);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0074);
            }
         }
         addr0080:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0062);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0062:
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
      
      public function set data(param1:EmergencyZoneLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0062:
                     this._dataIsDirty = true;
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr0074:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0074);
            }
            addr0079:
            return;
         }
         §§goto(addr0062);
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.emergencyHeader.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.securitystep"));
            if(_loc1_)
            {
               addr004e:
               this.checkBox.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.skiplabel"));
            }
            return;
         }
         §§goto(addr004e);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:ArrayList = null;
         var _loc2_:* = null;
         var _loc3_:GradeVo = null;
         if(_loc6_)
         {
            if(this._dataIsDirty)
            {
               if(_loc6_)
               {
                  addr0038:
                  this._dataIsDirty = false;
               }
               _loc1_ = new ArrayList();
               if(_loc6_)
               {
                  §§push(ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.status")));
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
               }
               for each(_loc3_ in this._data.grades)
               {
                  if(!_loc7_)
                  {
                     if(_loc3_.requiredGrade > 0)
                     {
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           _loc1_.addItem(_loc3_);
                        }
                     }
                  }
               }
               if(!_loc7_)
               {
                  §§push(this.departmentList);
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           addr0102:
                           this.departmentList.dataProvider = _loc1_;
                        }
                     }
                     §§goto(addr0106);
                  }
                  §§goto(addr0102);
               }
            }
            addr0106:
            return;
         }
         §§goto(addr0038);
      }
      
      private function _CoverageInfoComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0032:
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.paddingLeft = 30;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingRight = 10;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._CoverageInfoComponent_CheckBox1_i(),this._CoverageInfoComponent_HeaderComponent1_i(),this._CoverageInfoComponent_SeparatorList1_i()];
                        §§goto(addr0076);
                     }
                     §§goto(addr00a6);
                  }
                  addr0076:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a6:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr00ba:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00ba);
         }
         §§goto(addr0032);
      }
      
      private function _CoverageInfoComponent_CheckBox1_i() : CheckBox
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CheckBox = new CheckBox();
         if(!_loc3_)
         {
            _loc1_.styleName = "emergencySkipBox";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "checkBox";
                  if(_loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0088:
                              this.checkBox = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"checkBox",this.checkBox);
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0088);
                  }
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0060);
         }
         §§goto(addr0092);
      }
      
      private function _CoverageInfoComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.label = "DEV:COVERAGE INFO";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "emergencyHeader";
                  if(!_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr007a);
                           }
                        }
                        §§goto(addr0084);
                     }
                     addr007a:
                     this.emergencyHeader = _loc1_;
                     if(!_loc2_)
                     {
                        addr0084:
                        BindingManager.executeBindings(this,"emergencyHeader",this.emergencyHeader);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0071);
               }
               addr0091:
               return _loc1_;
            }
            §§goto(addr0084);
         }
         §§goto(addr0065);
      }
      
      private function _CoverageInfoComponent_SeparatorList1_i() : SeparatorList
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SeparatorList = new SeparatorList();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.itemRenderer = this._CoverageInfoComponent_ClassFactory1_c();
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0061:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("skinClass",QuestTaskListSkin);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0082:
                        _loc1_.id = "departmentList";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00ad:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00be:
                                    this.departmentList = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00c8:
                                       BindingManager.executeBindings(this,"departmentList",this.departmentList);
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00be);
                        }
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0082);
               }
               addr00d5:
               return _loc1_;
            }
            §§goto(addr0061);
         }
         §§goto(addr00c8);
      }
      
      private function _CoverageInfoComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || _loc3_)
         {
            _loc1_.generator = DepartmentTaskItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___CoverageInfoComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkBox() : CheckBox
      {
         return this._1536861091checkBox;
      }
      
      public function set checkBox(param1:CheckBox) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1536861091checkBox;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1536861091checkBox = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkBox",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentList() : SeparatorList
      {
         return this._262377712departmentList;
      }
      
      public function set departmentList(param1:SeparatorList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._262377712departmentList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._262377712departmentList = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentList",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyHeader() : HeaderComponent
      {
         return this._776838274emergencyHeader;
      }
      
      public function set emergencyHeader(param1:HeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._776838274emergencyHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._776838274emergencyHeader = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006d);
      }
   }
}

