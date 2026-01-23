package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfolayerMasteryRewardItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryCallengeUiInfolayerComponent extends AbstractUIInfolayerComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      private var _630498871challengeCompletedGroup:VGroup;
      
      private var _634597036challengeCompletedLabel:LocaLabel;
      
      private var _1251091353challengeDescription:LocaLabel;
      
      private var _1426521085challengeRunningGroup:VGroup;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1690977389rewardList:List;
      
      private var _1516824rewardsHeadline:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:MasteryChallengeUiInfolayerComponentVo;
      
      public function MasteryCallengeUiInfolayerComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.maxWidth = 300;
                  if(!_loc2_)
                  {
                     addr004d:
                     this.minWidth = 160;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr006b:
                        this.maxHeight = 800;
                        if(_loc1_)
                        {
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryCallengeUiInfolayerComponent_Array1_c);
                           if(!_loc2_)
                           {
                              addr008c:
                              this.addEventListener("creationComplete",this.___MasteryCallengeUiInfolayerComponent_AbstractUIInfolayerComponent1_creationComplete);
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr008c);
                  }
                  addr0098:
                  return;
               }
               §§goto(addr004d);
            }
         }
         §§goto(addr006b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               addr0037:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
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
         §§goto(addr0037);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!(param1 is MasteryChallengeUiInfolayerComponentVo))
            {
               throw new ArgumentError("Wrong VBo for this component use MasteryChallengeUiInfolayerComponentVo " + this);
            }
            if(!_loc2_)
            {
               this._implementationData = param1 as MasteryChallengeUiInfolayerComponentVo;
               if(!_loc2_)
               {
                  super.data = param1;
                  if(_loc2_)
                  {
                  }
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:MasteryBonusVo = null;
         if(_loc5_ || Boolean(this))
         {
            if(_dirty)
            {
               if(!_loc6_)
               {
                  this.challengeDescription.text = this._implementationData.challengeDescription;
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this.progressBar);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(this._implementationData);
                        if(!_loc6_)
                        {
                           §§push(§§pop().currentValue);
                           if(_loc5_)
                           {
                              §§push(this._implementationData);
                              if(!_loc6_)
                              {
                                 §§push(§§pop().targetValue);
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc6_)
                                    {
                                       addr009a:
                                       §§pop().progress = §§pop();
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          §§push(this._implementationData);
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(§§pop().showProgressBarOverride)
                                             {
                                                if(_loc5_)
                                                {
                                                   addr00cb:
                                                   this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = true;
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr00e3);
                                                   }
                                                   §§goto(addr019c);
                                                }
                                                addr00e3:
                                                var _temp_7:* = this.challengeCompletedGroup;
                                                var _loc3_:Boolean;
                                                this.challengeCompletedGroup.includeInLayout = _loc3_ = false;
                                                _temp_7.visible = _loc3_;
                                                if(_loc5_)
                                                {
                                                   §§push(this.progressBar);
                                                   if(_loc5_)
                                                   {
                                                      §§push(this._implementationData);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         addr0117:
                                                         §§push(§§pop().targetValue);
                                                         if(_loc5_)
                                                         {
                                                            addr0120:
                                                            §§push(§§pop() + "/");
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this._implementationData);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop().targetValue);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().label = §§pop();
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           addr025c:
                                                                           this.challengeCompletedLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.reward.falvor.done");
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0217:
                                                                        §§pop().label = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr026e);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0216:
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr0217);
                                                               }
                                                               else
                                                               {
                                                                  addr0213:
                                                                  §§push(§§pop().targetValue);
                                                               }
                                                               §§goto(addr0216);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01d1:
                                                            addr01d8:
                                                            addr01d5:
                                                            if(§§pop() > this._implementationData.targetValue)
                                                            {
                                                               addr01dd:
                                                               §§push(this._implementationData);
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop().targetValue);
                                                                  §§push((_loc5_ ? §§pop() : §§pop()) + "/");
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr0213);
                                                                     §§push(this._implementationData);
                                                                  }
                                                                  §§goto(addr0217);
                                                               }
                                                               else
                                                               {
                                                                  addr0201:
                                                                  §§push(§§pop().currentValue);
                                                               }
                                                               §§goto(addr0204);
                                                            }
                                                            else
                                                            {
                                                               §§push(this._implementationData);
                                                            }
                                                            §§goto(addr0201);
                                                         }
                                                         §§goto(addr0217);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01be:
                                                      §§push(this._implementationData);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop().currentValue);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr01d1);
                                                         }
                                                         §§goto(addr01f8);
                                                      }
                                                   }
                                                   §§goto(addr0201);
                                                }
                                                else
                                                {
                                                   addr0184:
                                                   this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = true;
                                                   if(!_loc6_)
                                                   {
                                                      addr019c:
                                                      this.challengeCompletedGroup.visible = this.challengeCompletedGroup.includeInLayout = false;
                                                      if(!_loc6_)
                                                      {
                                                         addr01b4:
                                                         §§push(this.progressBar);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr01be);
                                                         }
                                                         §§goto(addr01dd);
                                                      }
                                                      else
                                                      {
                                                         addr0244:
                                                         this.challengeCompletedGroup.visible = this.challengeCompletedGroup.includeInLayout = true;
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr025c);
                                                         }
                                                      }
                                                      §§goto(addr026e);
                                                   }
                                                   §§goto(addr0244);
                                                }
                                             }
                                             else
                                             {
                                                addr0170:
                                                if(this._implementationData.currentValue != this._implementationData.targetValue)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr0184);
                                                   }
                                                   §§goto(addr01b4);
                                                }
                                                else
                                                {
                                                   this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = false;
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      §§goto(addr0244);
                                                   }
                                                }
                                             }
                                             addr026e:
                                             _loc1_ = new ArrayCollection();
                                             for each(_loc2_ in this._implementationData.rewards)
                                             {
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   _loc1_.addItem(_loc2_);
                                                }
                                             }
                                             if(_loc5_ || Boolean(this))
                                             {
                                                this.rewardList.dataProvider = _loc1_;
                                             }
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr0170);
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr0120);
                                 }
                                 §§goto(addr01d8);
                              }
                              §§goto(addr01d5);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr01dd);
                  }
                  §§goto(addr025c);
               }
               §§goto(addr0244);
            }
            addr02cf:
            super.commitProperties();
            return;
         }
         §§goto(addr0184);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.rewardsHeadline.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.reward.header.capital");
         }
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Array1_c() : Array
      {
         return [this._MasteryCallengeUiInfolayerComponent_VGroup1_c()];
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.paddingLeft = 6;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.paddingRight = 6;
                     if(!_loc2_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_VGroup2_i(),this._MasteryCallengeUiInfolayerComponent_VGroup3_i(),this._MasteryCallengeUiInfolayerComponent_HGroup2_c(),this._MasteryCallengeUiInfolayerComponent_HGroup3_c(),this._MasteryCallengeUiInfolayerComponent_List1_i()];
                           if(!_loc2_)
                           {
                              addr00aa:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00b6:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00aa);
                  }
               }
            }
         }
         §§goto(addr00b6);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_LocaLabel1_i(),this._MasteryCallengeUiInfolayerComponent_HGroup1_c()];
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "challengeRunningGroup";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00a2:
                              this.challengeRunningGroup = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 BindingManager.executeBindings(this,"challengeRunningGroup",this.challengeRunningGroup);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr0070);
         }
         §§goto(addr00a2);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "infoLayerStatus";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "challengeDescription";
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr00b5);
                  }
               }
            }
            addr0077:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr00b5);
            }
            addr00a3:
            this.challengeDescription = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr00b5:
               BindingManager.executeBindings(this,"challengeDescription",this.challengeDescription);
            }
            return _loc1_;
         }
         §§goto(addr00b5);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr003e:
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib1_c(),this._MasteryCallengeUiInfolayerComponent_Group1_c(),this._MasteryCallengeUiInfolayerComponent_Group2_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr003e);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mastery_star";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr006d);
            }
            addr0059:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr006d:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_ProgressBarComponent1_i()];
               addr0035:
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006c);
            }
            addr0070:
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.progress = 0.5;
               if(_loc2_)
               {
                  addr0051:
                  _loc1_.id = "progressBar";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008d:
                              this.progressBar = _loc1_;
                              if(_loc2_)
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"progressBar",this.progressBar);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr008d);
            }
            §§goto(addr0097);
         }
         §§goto(addr0051);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 23;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 60;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr0053:
                        _loc1_.visible = false;
                        if(_loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_LocaLabel2_i()];
                              if(_loc2_ || _loc2_)
                              {
                                 addr0091:
                                 _loc1_.id = "challengeCompletedGroup";
                                 if(_loc2_)
                                 {
                                    addr009c:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00bc:
                                          _loc1_.document = this;
                                          if(!_loc3_)
                                          {
                                             addr00c5:
                                             this.challengeCompletedGroup = _loc1_;
                                             if(!_loc3_)
                                             {
                                                addr00cf:
                                                BindingManager.executeBindings(this,"challengeCompletedGroup",this.challengeCompletedGroup);
                                             }
                                             §§goto(addr00dc);
                                          }
                                          §§goto(addr00cf);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr0091);
                        }
                     }
                     addr00dc:
                     return _loc1_;
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0053);
            }
            §§goto(addr00cf);
         }
         §§goto(addr00c5);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.maxWidth = 210;
               if(!_loc3_)
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.styleName = "infoLabel";
                     if(_loc2_)
                     {
                        addr0065:
                        _loc1_.id = "challengeCompletedLabel";
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0078);
                        }
                     }
                     §§goto(addr00a9);
                  }
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr008e:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr009f);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  addr009f:
                  this.challengeCompletedLabel = _loc1_;
                  if(_loc2_)
                  {
                     addr00a9:
                     BindingManager.executeBindings(this,"challengeCompletedLabel",this.challengeCompletedLabel);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr008e);
            }
            addr00b6:
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr003c:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib2_c()];
                  addr0046:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0046);
         }
         §§goto(addr003c);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_ || _loc3_)
               {
                  addr005c:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0070:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0070);
            }
            addr0074:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "left";
               if(_loc2_)
               {
                  §§goto(addr004f);
               }
               §§goto(addr0092);
            }
            §§goto(addr0068);
         }
         addr004f:
         _loc1_.verticalAlign = "middle";
         if(!_loc3_)
         {
            addr0068:
            _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib3_c(),this._MasteryCallengeUiInfolayerComponent_LocaLabel3_i()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0092:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0096);
            }
            §§goto(addr0092);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc3_)
            {
               addr0041:
               _loc1_.dynaBmpSourceName = "mastery_reward";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "expansionBlue";
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 170;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0059:
                     _loc1_.id = "rewardsHeadline";
                     if(!_loc3_)
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0086:
                                 this.rewardsHeadline = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"rewardsHeadline",this.rewardsHeadline);
                                 }
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr007d);
                  }
                  addr00a5:
                  return _loc1_;
               }
               §§goto(addr0059);
            }
            §§goto(addr0098);
         }
         §§goto(addr0064);
      }
      
      private function _MasteryCallengeUiInfolayerComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.itemRenderer = this._MasteryCallengeUiInfolayerComponent_ClassFactory1_c();
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
                  if(!_loc2_)
                  {
                     addr0065:
                     _loc1_.id = "rewardList";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0091);
                           }
                        }
                     }
                     §§goto(addr00a2);
                  }
                  addr0091:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a2:
                     this.rewardList = _loc1_;
                     if(_loc3_)
                     {
                        BindingManager.executeBindings(this,"rewardList",this.rewardList);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr0065);
            }
            §§goto(addr00a2);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.generator = InfolayerMasteryRewardItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___MasteryCallengeUiInfolayerComponent_AbstractUIInfolayerComponent1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeCompletedGroup() : VGroup
      {
         return this._630498871challengeCompletedGroup;
      }
      
      public function set challengeCompletedGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._630498871challengeCompletedGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._630498871challengeCompletedGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeCompletedGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeCompletedLabel() : LocaLabel
      {
         return this._634597036challengeCompletedLabel;
      }
      
      public function set challengeCompletedLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._634597036challengeCompletedLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._634597036challengeCompletedLabel = param1;
                  addr003d:
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeCompletedLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeDescription() : LocaLabel
      {
         return this._1251091353challengeDescription;
      }
      
      public function set challengeDescription(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1251091353challengeDescription;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1251091353challengeDescription = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeDescription",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeRunningGroup() : VGroup
      {
         return this._1426521085challengeRunningGroup;
      }
      
      public function set challengeRunningGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1426521085challengeRunningGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1426521085challengeRunningGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeRunningGroup",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1131509414progressBar = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1690977389rewardList;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1690977389rewardList = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006c);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardsHeadline() : LocaLabel
      {
         return this._1516824rewardsHeadline;
      }
      
      public function set rewardsHeadline(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1516824rewardsHeadline;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1516824rewardsHeadline = param1;
                  addr0042:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardsHeadline",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
   }
}

