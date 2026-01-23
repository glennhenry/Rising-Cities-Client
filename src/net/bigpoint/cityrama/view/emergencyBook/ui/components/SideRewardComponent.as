package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SideRewardComponent extends Group implements IStateClient2
   {
      
      private var _1177331774itemName:LocaLabel;
      
      private var _1100650210reward1:ProgressThresholdIndicator;
      
      private var _1100650211reward2:ProgressThresholdIndicator;
      
      private var _1100650212reward3:ProgressThresholdIndicator;
      
      private var _878022508rewardImage:BriskImageDynaLib;
      
      private var _97174925rewardImageGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideRewardComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr004a:
                  this.mxmlContent = [this._SideRewardComponent_Group2_c()];
                  if(!(_loc1_ && _loc1_))
                  {
                     this.currentState = "normal";
                     if(_loc2_)
                     {
                        addr0078:
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
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr0078);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:EmergencyAssignVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc3_)
               {
                  addr003f:
                  this._data = param1;
                  if(!_loc2_)
                  {
                     this._dataIsDirty = true;
                     if(_loc3_)
                     {
                        addr0053:
                        invalidateProperties();
                     }
                     §§goto(addr0058);
                  }
                  §§goto(addr0053);
               }
            }
            addr0058:
            return;
         }
         §§goto(addr003f);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(_loc4_ || Boolean(_loc3_))
         {
            super.commitProperties();
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               if(this._dataIsDirty)
               {
                  if(_loc4_)
                  {
                     §§push(this._data.rewardGfxId + "_");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + this._data.rewardAmount);
                     }
                     §§push(§§pop());
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        _loc1_ = §§pop();
                        if(_loc4_)
                        {
                           this.rewardImage.dynaBmpSourceName = _loc1_;
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              this._dataIsDirty = false;
                              if(!_loc5_)
                              {
                                 §§push(ResourceManager.getInstance());
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._data.rewardGfxId));
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && Boolean(_loc1_)))
                                          {
                                             this.itemName.text = _loc2_;
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                addr010c:
                                                §§push(ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.onSuccessReward")));
                                                if(!_loc5_)
                                                {
                                                   addr0127:
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr012e:
                                                      _loc3_ = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr0158:
                                                         §§push(StringUtil.substitute(_loc3_,this._data.rewardAmount.toString(),_loc2_));
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr0157:
                                                            §§push(§§pop());
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr022a);
                                                      }
                                                      addr0167:
                                                      this.rewardImageGroup.toolTip = _loc3_;
                                                      if(_loc4_ || Boolean(_loc2_))
                                                      {
                                                         addr017c:
                                                         §§push(this.reward1);
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            §§pop().toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardOutput")),this._data.rewardAmount.toString());
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr01c7);
                                                            }
                                                            §§goto(addr01de);
                                                         }
                                                         addr01c7:
                                                         this.reward1.data = this._data.efficiencyProgressVo;
                                                         §§goto(addr01c3);
                                                      }
                                                      addr01c3:
                                                      if(_loc4_ || Boolean(_loc2_))
                                                      {
                                                         addr01de:
                                                         §§push(this.reward2);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardType")),_loc2_);
                                                            if(!(_loc5_ && Boolean(_loc1_)))
                                                            {
                                                               addr022e:
                                                               this.reward2.data = this._data.luckProgressVo;
                                                               addr022a:
                                                            }
                                                            §§goto(addr0237);
                                                         }
                                                         §§goto(addr022e);
                                                      }
                                                      §§goto(addr0237);
                                                   }
                                                   §§goto(addr0157);
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr0237);
                                          }
                                          §§goto(addr017c);
                                       }
                                       §§goto(addr012e);
                                    }
                                    §§goto(addr0158);
                                 }
                                 §§goto(addr010c);
                              }
                              §§goto(addr01de);
                           }
                        }
                        §§goto(addr0237);
                     }
                     §§goto(addr0127);
                  }
                  §§goto(addr01de);
               }
            }
            addr0237:
            return;
         }
         §§goto(addr022a);
      }
      
      private function _SideRewardComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0048);
               }
            }
            §§goto(addr0082);
         }
         addr0048:
         _loc1_.top = 60;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib1_c(),this._SideRewardComponent_Group3_i(),this._SideRewardComponent_VGroup1_c()];
            if(!_loc2_)
            {
               addr0082:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr008e);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bg_blue_reward";
               if(_loc3_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr0080);
            }
            addr0044:
            _loc1_.width = 218;
            if(!_loc2_)
            {
               _loc1_.height = 236;
               if(!(_loc2_ && _loc3_))
               {
                  addr006c:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0080:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0080);
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _SideRewardComponent_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = 15;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._SideRewardComponent_Group4_c(),this._SideRewardComponent_BriskImageDynaLib5_c()];
                  if(!_loc2_)
                  {
                     _loc1_.id = "rewardImageGroup";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0083:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr0096);
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0096);
                  }
                  addr008c:
                  this.rewardImageGroup = _loc1_;
                  if(!_loc2_)
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"rewardImageGroup",this.rewardImageGroup);
                  }
                  §§goto(addr00a3);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr0096);
      }
      
      private function _SideRewardComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._SideRewardComponent_Group5_c(),this._SideRewardComponent_BriskImageDynaLib3_c(),this._SideRewardComponent_BriskImageDynaLib4_i()];
               if(!(_loc2_ && _loc2_))
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0078:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0078);
            }
            addr007c:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _SideRewardComponent_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.bottom = -21;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 106;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib2_c(),this._SideRewardComponent_LocaLabel1_i()];
                     §§goto(addr005a);
                  }
                  §§goto(addr0096);
               }
               addr005a:
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0096:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009a);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "architect_postit_price";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.width = 106;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr006b);
                  }
               }
               §§goto(addr0077);
            }
         }
         addr006b:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0077:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.width = 106;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalCenter = 2;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.styleName = "emergencyRewardName";
                        if(_loc3_ || _loc3_)
                        {
                           addr0078:
                           _loc1_.id = "itemName";
                           if(!_loc2_)
                           {
                              addr0083:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr008f:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00ab:
                                       this.itemName = _loc1_;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00bd:
                                          BindingManager.executeBindings(this,"itemName",this.itemName);
                                       }
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00ab);
                           }
                        }
                        §§goto(addr00bd);
                     }
                     addr00ca:
                     return _loc1_;
                  }
                  §§goto(addr0083);
               }
               §§goto(addr008f);
            }
            §§goto(addr0078);
         }
         §§goto(addr0083);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "ressource_cardboard_small";
               addr0041:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0061);
               }
               §§goto(addr0075);
            }
            addr0061:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "60022_5";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        addr006e:
                        _loc1_.id = "rewardImage";
                        if(_loc3_ || _loc3_)
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a3:
                                    this.rewardImage = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"rewardImage",this.rewardImage);
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr008e);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0067:
                     _loc1_.top = -7;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007d);
                  }
                  addr0081:
                  return _loc1_;
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0067);
      }
      
      private function _SideRewardComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.bottom = 77;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.paddingLeft = 20;
                  if(!_loc3_)
                  {
                     _loc1_.paddingRight = 20;
                     if(!_loc3_)
                     {
                        §§goto(addr0059);
                     }
                     §§goto(addr006b);
                  }
                  addr0059:
                  _loc1_.gap = 3;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._SideRewardComponent_HGroup1_c(),this._SideRewardComponent_HGroup2_c(),this._SideRewardComponent_HGroup3_c()];
                     addr006b:
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr009b);
                     }
                     §§goto(addr00af);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr006b);
         }
         addr009b:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00af:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._SideRewardComponent_Group6_c(),this._SideRewardComponent_ProgressThresholdIndicator1_i()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0073);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0073);
            }
            §§goto(addr0087);
         }
         addr0073:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr0087:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 28;
            if(_loc3_)
            {
               _loc1_.height = 24;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005d:
                  _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib6_c()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr005d);
         }
         §§goto(addr0081);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_rewardsize";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr0085);
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator1_i() : ProgressThresholdIndicator
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr004c);
         }
         addr0041:
         _loc1_.id = "reward1";
         if(_loc2_)
         {
            addr004c:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0075:
                     this.reward1 = _loc1_;
                     if(_loc2_)
                     {
                        addr007f:
                        BindingManager.executeBindings(this,"reward1",this.reward1);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr008c);
            }
            §§goto(addr0075);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _SideRewardComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0058:
                  _loc1_.mxmlContent = [this._SideRewardComponent_Group7_c(),this._SideRewardComponent_ProgressThresholdIndicator2_i()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr007a);
            }
            addr007e:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _SideRewardComponent_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 28;
            if(!_loc2_)
            {
               _loc1_.height = 24;
               if(!(_loc2_ && _loc3_))
               {
                  addr005b:
                  _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib7_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr005b);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_rewardsize2";
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0066);
                  }
               }
            }
            §§goto(addr0070);
         }
         addr0066:
         _loc1_.horizontalCenter = 0;
         if(!_loc3_)
         {
            addr0070:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator2_i() : ProgressThresholdIndicator
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "reward2";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr0088:
                  this.reward2 = _loc1_;
                  if(!_loc3_)
                  {
                     addr0092:
                     BindingManager.executeBindings(this,"reward2",this.reward2);
                  }
                  §§goto(addr009f);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0092);
      }
      
      private function _SideRewardComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._SideRewardComponent_Group8_c(),this._SideRewardComponent_ProgressThresholdIndicator3_i()];
                  §§goto(addr0048);
               }
               §§goto(addr0074);
            }
            addr0048:
            if(_loc3_ || _loc3_)
            {
               addr0074:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _SideRewardComponent_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 28;
            if(!_loc3_)
            {
               _loc1_.height = 24;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib8_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _SideRewardComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_rewardsize3";
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        addr0075:
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0075);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr007e);
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator3_i() : ProgressThresholdIndicator
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "reward3";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008e:
                              this.reward3 = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"reward3",this.reward3);
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr0071);
         }
         §§goto(addr00a0);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemName() : LocaLabel
      {
         return this._1177331774itemName;
      }
      
      public function set itemName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177331774itemName;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1177331774itemName = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr004f);
               }
            }
            addr005e:
            return;
         }
         §§goto(addr004f);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr004e:
                  this._1100650210reward1 = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1100650211reward2 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward2",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward3",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007b);
               }
            }
         }
         addr008a:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardImage() : BriskImageDynaLib
      {
         return this._878022508rewardImage;
      }
      
      public function set rewardImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._878022508rewardImage;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._878022508rewardImage = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardImageGroup() : Group
      {
         return this._97174925rewardImageGroup;
      }
      
      public function set rewardImageGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._97174925rewardImageGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._97174925rewardImageGroup = param1;
                  addr0036:
                  if(!_loc4_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr0065);
               }
               addr004d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardImageGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0036);
      }
   }
}

