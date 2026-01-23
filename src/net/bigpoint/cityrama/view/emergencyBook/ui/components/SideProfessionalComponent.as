package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SideProfessionalComponent extends Group implements IStateClient2
   {
      
      private var _1795780411professionalSlot:SideSpecialistSlotComponent;
      
      private var _1100650210reward1:ProgressThresholdIndicator;
      
      private var _1100650211reward2:ProgressThresholdIndicator;
      
      private var _1100650212reward3:ProgressThresholdIndicator;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _originalData:EmergencyAssignVo;
      
      private var _currentData:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _currentDataIsDirty:Boolean = false;
      
      public function SideProfessionalComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr006b);
            }
            §§goto(addr0077);
         }
         addr0049:
         this.mxmlContent = [this._SideProfessionalComponent_Group2_c()];
         if(_loc1_ || Boolean(this))
         {
            addr006b:
            this.currentState = "normal";
            if(_loc1_)
            {
               addr0077:
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               })];
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  addr0049:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0049);
         }
         addr0043:
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
      
      public function set originalData(param1:EmergencyAssignVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._originalData))
            {
               if(_loc2_)
               {
                  this._originalData = param1;
                  if(!_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(_loc2_)
                     {
                        addr004f:
                        invalidateProperties();
                     }
                     §§goto(addr0054);
                  }
                  §§goto(addr004f);
               }
            }
         }
         addr0054:
      }
      
      public function set currentData(param1:EmergencyAssignVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._currentData))
            {
               if(!_loc2_)
               {
                  this._currentData = param1;
                  if(!_loc2_)
                  {
                     this._currentDataIsDirty = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0056:
                        invalidateProperties();
                     }
                     §§goto(addr005b);
                  }
                  §§goto(addr0056);
               }
            }
         }
         addr005b:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc1_ && _loc2_))
            {
               §§push(this._dataIsDirty);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        this._dataIsDirty = false;
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.reward1);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(this._originalData.efficiencyProgressVo);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 §§pop().data = §§pop();
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(this.reward2);
                                    if(!_loc1_)
                                    {
                                       §§push(this._originalData.luckProgressVo);
                                       if(_loc2_)
                                       {
                                          §§pop().data = §§pop();
                                          if(_loc2_)
                                          {
                                             this.reward3.data = this._originalData.goofinessProgressVo;
                                             if(!_loc1_)
                                             {
                                                §§goto(addr00c1);
                                             }
                                             §§goto(addr00e0);
                                          }
                                          addr00c1:
                                          addr00c5:
                                          if(this._currentDataIsDirty)
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                addr00e0:
                                                this._currentDataIsDirty = false;
                                                if(_loc2_)
                                                {
                                                   addr00f5:
                                                   this.reward1.updateXtraProgress(this._currentData.efficiencyProgressVo.progress);
                                                   addr00ee:
                                                   addr00ea:
                                                   if(_loc2_)
                                                   {
                                                      addr010c:
                                                      this.reward2.updateXtraProgress(this._currentData.luckProgressVo.progress);
                                                      addr0101:
                                                      addr0105:
                                                   }
                                                }
                                                §§goto(addr0113);
                                             }
                                             §§goto(addr0101);
                                          }
                                          §§goto(addr0113);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr0113);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr00ea);
                     }
                     addr0113:
                     return;
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr00c5);
            }
            §§goto(addr00ea);
         }
         §§goto(addr00e0);
      }
      
      public function get professionalId() : Number
      {
         return this.professionalSlot.professionalId;
      }
      
      public function set professionalData(param1:ProfessionalSlotVo) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = null;
         if(_loc4_)
         {
            this.professionalSlot.data = param1;
            if(_loc4_)
            {
               §§goto(addr0029);
            }
            §§goto(addr00cb);
         }
         addr0029:
         if(this._currentData)
         {
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(ResourceManager.getInstance().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._originalData.rewardGfxId));
               if(!_loc3_)
               {
                  §§push(§§pop());
               }
               _loc2_ = §§pop();
               if(_loc4_)
               {
                  this.reward1.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardOutputMock")).replace("{0}",this._originalData.rewardAmount.toString()).replace("{1}",param1.name);
                  if(_loc4_ || Boolean(this))
                  {
                     addr00cb:
                     this.reward2.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardTypeMock")).replace("{0}",_loc2_).replace("{1}",param1.name);
                  }
                  §§goto(addr00ff);
               }
            }
            §§goto(addr00cb);
         }
         addr00ff:
      }
      
      private function _SideProfessionalComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               addr0046:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = 60;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib1_c(),this._SideProfessionalComponent_SideSpecialistSlotComponent1_i(),this._SideProfessionalComponent_VGroup1_c()];
                     if(!_loc2_)
                     {
                        addr0093:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr009f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0093);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "bg_blue_reward";
               if(_loc2_)
               {
                  _loc1_.width = 218;
                  §§goto(addr004c);
               }
            }
            §§goto(addr006c);
         }
         addr004c:
         if(_loc2_ || Boolean(_loc1_))
         {
            addr006c:
            _loc1_.height = 236;
            if(_loc2_)
            {
               §§goto(addr0077);
            }
            §§goto(addr0083);
         }
         addr0077:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0083:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_SideSpecialistSlotComponent1_i() : SideSpecialistSlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SideSpecialistSlotComponent = new SideSpecialistSlotComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.top = 10;
               if(!_loc3_)
               {
                  _loc1_.id = "professionalSlot";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0083:
                              this.professionalSlot = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0095:
                                 BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0083);
                  }
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr0083);
      }
      
      private function _SideProfessionalComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.bottom = 75;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  addr003b:
                  _loc1_.paddingLeft = 20;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingRight = 20;
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.gap = 3;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._SideProfessionalComponent_HGroup1_c(),this._SideProfessionalComponent_HGroup2_c(),this._SideProfessionalComponent_HGroup3_c()];
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr00a6);
                           }
                        }
                        §§goto(addr00ba);
                     }
                     addr00a6:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr00ba:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr0064);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr003b);
      }
      
      private function _SideProfessionalComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0038:
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._SideProfessionalComponent_Group3_c(),this._SideProfessionalComponent_ProgressThresholdIndicator1_i()];
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr006d);
                  }
               }
               §§goto(addr0079);
            }
            addr006d:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0079:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _SideProfessionalComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 28;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 24;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib2_c()];
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0085:
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               addr002c:
               _loc1_.dynaBmpSourceName = "icon_rewardsize";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0088);
            }
            addr0074:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0088:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator1_i() : ProgressThresholdIndicator
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "reward1";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0085:
                           this.reward1 = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0097:
                              BindingManager.executeBindings(this,"reward1",this.reward1);
                           }
                        }
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr0085);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr0097);
         }
         §§goto(addr0085);
      }
      
      private function _SideProfessionalComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._SideProfessionalComponent_Group4_c(),this._SideProfessionalComponent_ProgressThresholdIndicator2_i()];
                  if(_loc2_)
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0090);
               }
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0094);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(!_loc2_)
            {
               _loc1_.height = 24;
               addr002c:
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0083);
               }
               addr006f:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0083:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_rewardsize2";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr0084);
                  }
               }
            }
            addr0078:
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
         addr0088:
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator2_i() : ProgressThresholdIndicator
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.id = "reward2";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0070:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0079:
                           this.reward2 = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"reward2",this.reward2);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0079);
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr0079);
      }
      
      private function _SideProfessionalComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(_loc3_)
               {
                  addr0045:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._SideProfessionalComponent_Group5_c(),this._SideProfessionalComponent_ProgressThresholdIndicator3_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0045);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 28;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 24;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib4_c()];
                  addr004f:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0089);
            }
            §§goto(addr004f);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_rewardsize3";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0069:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        §§goto(addr0073);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0069);
            }
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr0087:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator3_i() : ProgressThresholdIndicator
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.id = "reward3";
               addr0034:
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0052);
               }
               §§goto(addr006b);
            }
            addr0052:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006b:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0086);
               }
            }
            addr0074:
            this.reward3 = _loc1_;
            if(!(_loc3_ && _loc3_))
            {
               addr0086:
               BindingManager.executeBindings(this,"reward3",this.reward3);
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SideSpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SideSpecialistSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1795780411professionalSlot;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1795780411professionalSlot = param1;
                  if(!_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004e);
            }
            addr0074:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get reward1() : ProgressThresholdIndicator
      {
         return this._1100650210reward1;
      }
      
      public function set reward1(param1:ProgressThresholdIndicator) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1100650210reward1;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1100650210reward1 = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get reward2() : ProgressThresholdIndicator
      {
         return this._1100650211reward2;
      }
      
      public function set reward2(param1:ProgressThresholdIndicator) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1100650211reward2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1100650211reward2 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr0069);
               }
               addr0051:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward2",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get reward3() : ProgressThresholdIndicator
      {
         return this._1100650212reward3;
      }
      
      public function set reward3(param1:ProgressThresholdIndicator) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1100650212reward3;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1100650212reward3 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward3",_loc2_,param1));
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
         §§goto(addr005e);
      }
   }
}

