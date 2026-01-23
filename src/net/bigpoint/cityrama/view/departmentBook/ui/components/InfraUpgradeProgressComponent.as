package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class InfraUpgradeProgressComponent extends Group
   {
      
      public static const UPGRADE_BUILDING:String = "UPGRADE_BUILDING";
      
      public static const INSTA_UPGRADE_BUILDING:String = "INSTA_UPGRADE_BUILDING";
      
      public static const OPEN_RC_REBUY:String = "OPEN_RC_REBUY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || InfraUpgradeProgressComponent)
      {
         UPGRADE_BUILDING = "UPGRADE_BUILDING";
         if(_loc1_ || _loc2_)
         {
            INSTA_UPGRADE_BUILDING = "INSTA_UPGRADE_BUILDING";
            if(!(_loc2_ && _loc1_))
            {
               OPEN_RC_REBUY = "OPEN_RC_REBUY";
            }
         }
      }
      
      private var _936519491instaBuyButton:DynamicPlusButton;
      
      private var _746926070rcCostLabel:LocaLabel;
      
      private var _676505710upgradeButton:MultistateButton;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpgradeProgressVo;
      
      private var _dataIsDirty:Boolean;
      
      public function InfraUpgradeProgressComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr002f:
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.mxmlContent = [this._InfraUpgradeProgressComponent_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  addr0046:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0040:
            return;
         }
         §§goto(addr0046);
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
      
      public function set data(param1:UpgradeProgressVo) : void
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
                  if(_loc2_ || _loc2_)
                  {
                     this._dataIsDirty = true;
                     if(_loc2_ || Boolean(param1))
                     {
                        addr0072:
                        invalidateProperties();
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0072);
            }
            addr0077:
            return;
         }
         §§goto(addr0072);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this._dataIsDirty);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0054:
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this._data);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0074:
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       this._dataIsDirty = false;
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr0093:
                                          if(this._data.upgradeCurrentLevel != this._data.upgradeNextLevel)
                                          {
                                             if(_loc2_ || Boolean(this))
                                             {
                                                §§push(this.rcCostLabel);
                                                if(!_loc3_)
                                                {
                                                   §§push("styleName");
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push("residentialProgressComment");
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().setStyle(§§pop(),§§pop());
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this.rcCostLabel);
                                                            if(!_loc3_)
                                                            {
                                                               addr00df:
                                                               §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[this._data.instaFinishRCCost]));
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().text = §§pop();
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr0107:
                                                                     §§push(this.rcCostLabel);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0110:
                                                                        §§push(false);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§pop().visible = §§pop();
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              addr012d:
                                                                              §§push(this.upgradeButton);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§pop().label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeReady");
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr014a:
                                                                                    §§push(this.upgradeButton);
                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop().sparkle);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0178:
                                                                                                §§push(this.upgradeButton);
                                                                                                if(_loc2_ || Boolean(this))
                                                                                                {
                                                                                                   addr018d:
                                                                                                   §§pop().sparkle.includeInLayout = true;
                                                                                                   addr018c:
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      addr01aa:
                                                                                                      §§push(this.instaBuyButton);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(this.instaBuyButton);
                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            if(_loc2_ || _loc3_)
                                                                                                            {
                                                                                                               var _temp_19:* = §§pop();
                                                                                                               §§push(_temp_19);
                                                                                                               §§push(_temp_19);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  var _loc1_:* = §§pop();
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().includeInLayout = §§pop();
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(this.instaBuyButton);
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this._data);
                                                                                                                                    if(_loc2_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().affordableByRc);
                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().showPlus = §§pop();
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr0252:
                                                                                                                                                §§push(this.instaBuyButton);
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr0267:
                                                                                                                                                   §§pop().priceToConfirm = this._data.instaFinishRCCost;
                                                                                                                                                   addr0263:
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.upgradeButton);
                                                                                                                                                      if(_loc2_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr0283:
                                                                                                                                                         §§push(this.upgradeButton.includeInLayout = true);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().visible = §§pop();
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr02c2:
                                                                                                                                                               this.upgradeButton.visible = false;
                                                                                                                                                               addr02bd:
                                                                                                                                                               addr02c1:
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr02d4:
                                                                                                                                                                  §§push(this.instaBuyButton);
                                                                                                                                                                  this.instaBuyButton.includeInLayout = _loc1_ = false;
                                                                                                                                                                  addr02d9:
                                                                                                                                                                  §§pop().visible = _loc1_;
                                                                                                                                                                  addr02d7:
                                                                                                                                                                  addr02d6:
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr02e0:
                                                                                                                                                                     this.upgradeIcon.dynaBmpSourceName = "upgrade_icon_all";
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02f7:
                                                                                                                                                                        §§push(this.rcCostLabel);
                                                                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr030d:
                                                                                                                                                                           §§pop().setStyle("styleName","residentialProgressCommentGold");
                                                                                                                                                                           addr030a:
                                                                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr032a:
                                                                                                                                                                              §§push(this.rcCostLabel);
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr033f:
                                                                                                                                                                                 §§pop().text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeMax");
                                                                                                                                                                                 §§goto(addr0333);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0352);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr034e);
                                                                                                                                                                        }
                                                                                                                                                                        addr0333:
                                                                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0353:
                                                                                                                                                                           this.rcCostLabel.visible = true;
                                                                                                                                                                           addr0352:
                                                                                                                                                                           addr034e:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0355);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr0355:
                                                                                                                                                                  return;
                                                                                                                                                                  addr02cd:
                                                                                                                                                                  addr02d3:
                                                                                                                                                                  addr02d2:
                                                                                                                                                                  addr02d1:
                                                                                                                                                                  addr02c9:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr032a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0355);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr02b6:
                                                                                                                                                            §§pop().includeInLayout = §§pop();
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr02bd);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr032a);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr02a8:
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr02b6);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02c2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0355);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02cd);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02e0);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr02d9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0267);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0263);
                                                                                                                              }
                                                                                                                              §§goto(addr0355);
                                                                                                                           }
                                                                                                                           §§goto(addr02d9);
                                                                                                                        }
                                                                                                                        §§goto(addr02d7);
                                                                                                                     }
                                                                                                                     §§goto(addr02d6);
                                                                                                                  }
                                                                                                                  §§goto(addr02d4);
                                                                                                               }
                                                                                                               §§goto(addr02d3);
                                                                                                            }
                                                                                                            §§goto(addr02d2);
                                                                                                         }
                                                                                                         §§goto(addr02d1);
                                                                                                      }
                                                                                                      §§goto(addr0263);
                                                                                                   }
                                                                                                   §§goto(addr02c9);
                                                                                                }
                                                                                                §§goto(addr02c1);
                                                                                             }
                                                                                             §§goto(addr01aa);
                                                                                          }
                                                                                          §§goto(addr018d);
                                                                                       }
                                                                                       §§goto(addr018c);
                                                                                    }
                                                                                    §§goto(addr0283);
                                                                                 }
                                                                                 §§goto(addr02f7);
                                                                              }
                                                                              §§goto(addr02a8);
                                                                           }
                                                                           §§goto(addr014a);
                                                                        }
                                                                        §§goto(addr0353);
                                                                     }
                                                                     §§goto(addr0333);
                                                                  }
                                                                  §§goto(addr034e);
                                                               }
                                                               §§goto(addr033f);
                                                            }
                                                            §§goto(addr0110);
                                                         }
                                                         §§goto(addr0252);
                                                      }
                                                      §§goto(addr030d);
                                                   }
                                                   §§goto(addr030a);
                                                }
                                                §§goto(addr00df);
                                             }
                                             §§goto(addr0178);
                                          }
                                          else
                                          {
                                             §§push(this.upgradeButton);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr02a8);
                                             }
                                          }
                                          §§goto(addr02c1);
                                       }
                                       §§goto(addr0107);
                                    }
                                 }
                                 §§goto(addr0355);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr012d);
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0054);
            }
            §§goto(addr02c9);
         }
         §§goto(addr02e0);
      }
      
      private function handleInstaBuyClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._data.affordableByRc)
            {
               if(!_loc2_)
               {
                  addr003c:
                  dispatchEvent(new Event(INSTA_UPGRADE_BUILDING,true));
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(OPEN_RC_REBUY,true));
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function handleUpgradeClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(new Event(UPGRADE_BUILDING,true));
         }
      }
      
      private function _InfraUpgradeProgressComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               addr0033:
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 210;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_BriskImageDynaLib1_i(),this._InfraUpgradeProgressComponent_Group2_c(),this._InfraUpgradeProgressComponent_DynamicPlusButton1_i()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0094:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00a0:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0094);
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr0033);
      }
      
      private function _InfraUpgradeProgressComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "upgrade_icon";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 31;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 36;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0075:
                        _loc1_.id = "upgradeIcon";
                        if(!_loc2_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00bc);
                     }
                     addr008c:
                     _loc1_.document = this;
                     if(_loc3_ || _loc3_)
                     {
                        addr00aa:
                        this.upgradeIcon = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr00bc:
                           BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0080);
            }
            §§goto(addr00bc);
         }
         §§goto(addr00aa);
      }
      
      private function _InfraUpgradeProgressComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0031:
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.minWidth = 1;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_HGroup2_c(),this._InfraUpgradeProgressComponent_MultistateButton1_i()];
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
               }
               §§goto(addr0098);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _InfraUpgradeProgressComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr0046);
            }
            §§goto(addr0097);
         }
         addr0046:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  addr007b:
                  _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_LocaLabel1_i()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0097:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009b);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr007b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.minWidth = 1;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(!_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.minHeight = 1;
                        if(!_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr00cb);
                     }
                     addr0072:
                     _loc1_.styleName = "residentialProgressComment";
                     if(!_loc2_)
                     {
                        _loc1_.id = "rcCostLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b9:
                                    this.rcCostLabel = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00cb:
                                       BindingManager.executeBindings(this,"rcCostLabel",this.rcCostLabel);
                                    }
                                 }
                                 §§goto(addr00d8);
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00cb);
                     }
                     addr00d8:
                     return _loc1_;
                  }
               }
               §§goto(addr00cb);
            }
            §§goto(addr009c);
         }
         §§goto(addr0090);
      }
      
      private function _InfraUpgradeProgressComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.includeInLayout = false;
               if(_loc2_)
               {
                  _loc1_.addEventListener("click",this.__upgradeButton_click);
                  if(_loc2_)
                  {
                     _loc1_.id = "upgradeButton";
                     if(!_loc3_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0095:
                                 this.upgradeButton = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"upgradeButton",this.upgradeButton);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a7);
                           }
                           addr00b4:
                           return _loc1_;
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr006c);
            }
            §§goto(addr0095);
         }
         §§goto(addr0078);
      }
      
      public function __upgradeButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleUpgradeClick(param1);
         }
      }
      
      private function _InfraUpgradeProgressComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.useConfirmation = true;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.includeInLayout = false;
                  if(_loc2_)
                  {
                     addr0056:
                     _loc1_.visible = false;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.iconImageName = "dd_button_icon";
                        if(!_loc3_)
                        {
                           addr0073:
                           _loc1_.iconLibName = "gui_resources_icons";
                           if(!_loc3_)
                           {
                              _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                              addr007f:
                              if(_loc2_)
                              {
                                 _loc1_.addEventListener("rollOver",this.__instaBuyButton_rollOver);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b4:
                                    _loc1_.addEventListener("rollOut",this.__instaBuyButton_rollOut);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00cd:
                                       _loc1_.addEventListener("click",this.__instaBuyButton_click);
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00e6:
                                          _loc1_.id = "instaBuyButton";
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             if(!_loc1_.document)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr0110:
                                                   _loc1_.document = this;
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr0119);
                                                   }
                                                   §§goto(addr012b);
                                                }
                                             }
                                             addr0119:
                                             this.instaBuyButton = _loc1_;
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr012b:
                                                BindingManager.executeBindings(this,"instaBuyButton",this.instaBuyButton);
                                             }
                                             §§goto(addr0138);
                                          }
                                          §§goto(addr012b);
                                       }
                                       §§goto(addr0138);
                                    }
                                    §§goto(addr012b);
                                 }
                                 addr0138:
                                 return _loc1_;
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0119);
               }
               §§goto(addr00cd);
            }
            §§goto(addr0056);
         }
         §§goto(addr00b4);
      }
      
      public function __instaBuyButton_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.upgradeButton.visible = false;
            if(!_loc3_)
            {
               addr002b:
               this.rcCostLabel.visible = true;
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function __instaBuyButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.upgradeButton.visible = true;
            if(_loc3_ || _loc2_)
            {
               addr002c:
               this.rcCostLabel.visible = false;
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function __instaBuyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleInstaBuyClick(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get instaBuyButton() : DynamicPlusButton
      {
         return this._936519491instaBuyButton;
      }
      
      public function set instaBuyButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._936519491instaBuyButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._936519491instaBuyButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instaBuyButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0066);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCostLabel() : LocaLabel
      {
         return this._746926070rcCostLabel;
      }
      
      public function set rcCostLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._746926070rcCostLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._746926070rcCostLabel = param1;
                  if(!_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCostLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeButton() : MultistateButton
      {
         return this._676505710upgradeButton;
      }
      
      public function set upgradeButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._676505710upgradeButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._676505710upgradeButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeIcon() : BriskImageDynaLib
      {
         return this._1844912971upgradeIcon;
      }
      
      public function set upgradeIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844912971upgradeIcon;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1844912971upgradeIcon = param1;
                  if(!_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
   }
}

