package net.bigpoint.cityrama.view.miniLayer.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class PatrolOptionsItemRenderer extends ItemRenderer
   {
      
      public static const PATROL_SELECTED:String = "PATROL_SELECTED";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || PatrolOptionsItemRenderer)
      {
         PATROL_SELECTED = "PATROL_SELECTED";
         if(!_loc2_)
         {
            addr002b:
            OPEN_TREASURY = "OPEN_TREASURY";
         }
         return;
      }
      §§goto(addr002b);
      
      private var _1443223590characterImg:BriskImageDynaLib;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _1221270899header:LocaLabel;
      
      private var _1161933810headerGroup:Group;
      
      private var _1914490085patrolIcon:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _198462964rateLabel:LocaLabel;
      
      private var _1569151597rightSide:VGroup;
      
      private var _1716002880selectBtn:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PatrolOptionVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolOptionsItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.autoDrawBackground = false;
                  addr0041:
                  if(_loc1_)
                  {
                     this.minWidth = 385;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr0075);
                  }
               }
               addr0069:
               this.minHeight = 194;
               if(_loc1_)
               {
                  addr0075:
                  this.mxmlContent = [this._PatrolOptionsItemRenderer_Group1_c()];
               }
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr0075);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr0043:
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0063);
                        }
                        §§goto(addr01c9);
                     }
                  }
                  addr0063:
                  §§push(this._isDirty);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           addr0076:
                           §§push(this.header);
                           if(_loc1_ || _loc1_)
                           {
                              §§push(this._data.name);
                              if(_loc1_)
                              {
                                 §§pop().text = §§pop();
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00ab:
                                    this.header.addEventListener(FlexEvent.CREATION_COMPLETE,this.headerCreationComplete);
                                    addr00a6:
                                    addr00a2:
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       this.rateLabel.text = this._data.rateText;
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this.selectBtn);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(this._data);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop().btnText);
                                                if(!_loc2_)
                                                {
                                                   §§pop().label = §§pop();
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(this.selectBtn);
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         §§push(this._data);
                                                         if(!_loc2_)
                                                         {
                                                            addr0132:
                                                            §§pop().toolTip = §§pop().btnTooltip;
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               addr0141:
                                                               §§push(this.selectBtn);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this._data);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr015b:
                                                                     §§push(§§pop().affordable);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc1_)
                                                                        {
                                                                           §§pop().showPlus = §§pop();
                                                                           if(_loc1_ || Boolean(this))
                                                                           {
                                                                              addr0181:
                                                                              §§push(this.selectBtn);
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    addr019e:
                                                                                    §§pop().showSparkle = §§pop().affordable;
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       addr01b6:
                                                                                       this.selectBtn.priceToConfirm = this._data.price;
                                                                                       addr01b2:
                                                                                       addr01ae:
                                                                                       if(_loc1_ || Boolean(this))
                                                                                       {
                                                                                          addr01c9:
                                                                                          §§push(this.patrolIcon);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push("gui_main_hud");
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§pop().dynaLibName = §§pop();
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   addr0208:
                                                                                                   addr01f7:
                                                                                                   addr01e9:
                                                                                                   §§push(this.patrolIcon);
                                                                                                   §§push("patrolIcon_");
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + this._data.gfxId);
                                                                                                   }
                                                                                                   §§pop().dynaBmpSourceName = §§pop();
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      addr0217:
                                                                                                      this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.price);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr022a);
                                                                                             }
                                                                                             §§goto(addr0208);
                                                                                          }
                                                                                          §§goto(addr01f7);
                                                                                       }
                                                                                       §§goto(addr0217);
                                                                                    }
                                                                                    §§goto(addr022a);
                                                                                 }
                                                                                 §§goto(addr01b6);
                                                                              }
                                                                              §§goto(addr01b2);
                                                                           }
                                                                           §§goto(addr022a);
                                                                        }
                                                                     }
                                                                     §§goto(addr019e);
                                                                  }
                                                                  §§goto(addr01b6);
                                                               }
                                                               §§goto(addr01b2);
                                                            }
                                                            §§goto(addr01ae);
                                                         }
                                                         §§goto(addr015b);
                                                      }
                                                      §§goto(addr01b2);
                                                   }
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr0132);
                                             }
                                             §§goto(addr015b);
                                          }
                                          §§goto(addr01b2);
                                       }
                                       §§goto(addr01ae);
                                    }
                                    §§goto(addr0181);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr01e9);
                     }
                     §§goto(addr0076);
                  }
                  addr022a:
                  return;
               }
               §§goto(addr0043);
            }
            §§goto(addr0181);
         }
         §§goto(addr00a2);
      }
      
      private function headerCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.header);
            if(_loc2_)
            {
               §§pop().removeEventListener(FlexEvent.CREATION_COMPLETE,this.headerCreationComplete);
               if(!_loc3_)
               {
                  addr0039:
                  §§push(this.header);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(118);
                     if(!_loc3_)
                     {
                        §§pop().maxWidth = §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.header);
                           if(_loc2_ || _loc3_)
                           {
                              addr0076:
                              §§push(§§pop().width >= this.header.maxWidth);
                              if(!_loc3_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(!_temp_4)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr008f:
                                       §§pop();
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.header);
                                          if(_loc2_)
                                          {
                                             addr00b0:
                                             addr00a6:
                                             if(§§pop().height >= this.header.maxHeight)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr00cc:
                                                   §§push(this.header);
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr00d5);
                                                   }
                                                   §§goto(addr00f2);
                                                }
                                             }
                                             §§goto(addr00ee);
                                          }
                                          addr00d5:
                                          §§pop().setStyle("fontSize",this.header.getStyle("fontSize") - 2);
                                          if(_loc2_)
                                          {
                                             addr00f4:
                                             this.header.maxDisplayedLines = 2;
                                             addr00f2:
                                             addr00ee:
                                          }
                                          return;
                                       }
                                       §§goto(addr00cc);
                                    }
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr008f);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00ee);
                     }
                     §§goto(addr00f4);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr00ee);
            }
            §§goto(addr00f2);
         }
         §§goto(addr0039);
      }
      
      private function onSelect(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this.selectBtn.showPlus)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr003c:
                  dispatchEvent(new Event(OPEN_TREASURY,true,true));
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(PATROL_SELECTED,true,true));
            }
            return;
         }
         §§goto(addr003c);
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1 is PatrolOptionVo);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0050:
                     if(!RandomUtilities.isEqual(PatrolOptionVo(param1),this._data))
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           this._data = param1 as PatrolOptionVo;
                           addr0061:
                           if(_loc2_ || _loc3_)
                           {
                              this._isDirty = true;
                              if(_loc2_ || Boolean(param1))
                              {
                                 addr0094:
                                 invalidateProperties();
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr0094);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0099);
            }
            §§goto(addr0050);
         }
         addr0099:
      }
      
      public function get assistConfigId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._data);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr0045:
                     return this._data.configId;
                     addr0041:
                  }
               }
               return -1;
            }
            §§goto(addr0045);
         }
         §§goto(addr0041);
      }
      
      private function _PatrolOptionsItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib1_c(),this._PatrolOptionsItemRenderer_HGroup1_c()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0053);
            }
            §§goto(addr004f);
         }
         addr0053:
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "paper_quadrille_big";
               if(_loc3_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr0071);
            }
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc2_)
            {
               addr0071:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc3_)
                     {
                        addr0073:
                        _loc1_.gap = 0;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0092:
                           _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_Group2_c(),this._PatrolOptionsItemRenderer_VGroup1_i()];
                           if(_loc2_)
                           {
                              §§goto(addr00a8);
                           }
                           §§goto(addr00b4);
                        }
                        addr00a8:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00b4:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00b8);
                     }
                     addr00b8:
                     return _loc1_;
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr0073);
      }
      
      private function _PatrolOptionsItemRenderer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib2_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib3_i(),this._PatrolOptionsItemRenderer_HGroup2_c()];
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0078:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
               if(_loc3_)
               {
                  _loc1_.width = 111;
                  if(!_loc2_)
                  {
                     _loc1_.top = 115;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.left = 13;
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr007e:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr007e);
                  }
               }
            }
         }
         addr0082:
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_giver_52004";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.top = 10;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005b:
                     _loc1_.id = "characterImg";
                     if(_loc2_ || _loc3_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008e:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0097);
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr00a1);
                  }
                  addr0097:
                  this.characterImg = _loc1_;
                  if(!_loc3_)
                  {
                     addr00a1:
                     BindingManager.executeBindings(this,"characterImg",this.characterImg);
                  }
                  return _loc1_;
               }
               §§goto(addr005b);
            }
            §§goto(addr008e);
         }
         §§goto(addr006e);
      }
      
      private function _PatrolOptionsItemRenderer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr0030:
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr00ad);
               }
               addr0059:
               _loc1_.gap = 10;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.paddingTop = 140;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib4_i(),this._PatrolOptionsItemRenderer_LocaLabel1_i()];
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00a1);
            }
            addr00a1:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr00ad:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0030);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "rc_icon_small";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "currencyIcon";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0088:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr0099);
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0088);
               }
               addr0099:
               this.currencyIcon = _loc1_;
               if(_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
               }
               §§goto(addr00b0);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "DataGridStatisticNames";
            if(!_loc3_)
            {
               _loc1_.id = "priceLabel";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0069:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr007a:
                           this.priceLabel = _loc1_;
                           if(_loc2_)
                           {
                              addr0084:
                              BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0084);
                     }
                     addr0091:
                     return _loc1_;
                  }
               }
               §§goto(addr007a);
            }
         }
         §§goto(addr0069);
      }
      
      private function _PatrolOptionsItemRenderer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 227;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     addr004e:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        _loc1_.gap = 20;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_Group3_i(),this._PatrolOptionsItemRenderer_LocaLabel3_i(),this._PatrolOptionsItemRenderer_MultistateButton1_i()];
                           if(_loc2_)
                           {
                              addr0095:
                              _loc1_.id = "rightSide";
                              if(!_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr00b9);
                                    }
                                 }
                                 §§goto(addr00c2);
                              }
                              addr00b9:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00c2:
                                 this.rightSide = _loc1_;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00d4:
                                    BindingManager.executeBindings(this,"rightSide",this.rightSide);
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           addr00e1:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00c2);
            }
            §§goto(addr00d4);
         }
         §§goto(addr004e);
      }
      
      private function _PatrolOptionsItemRenderer_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_HGroup3_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib8_i(),this._PatrolOptionsItemRenderer_HGroup4_c()];
            if(_loc3_)
            {
               _loc1_.id = "headerGroup";
               if(!_loc2_)
               {
                  addr005c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0086);
                        }
                     }
                     §§goto(addr0098);
                  }
                  addr0086:
                  this.headerGroup = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0098:
                     BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0098);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _PatrolOptionsItemRenderer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.width = 227;
               if(!_loc3_)
               {
                  addr0049:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     addr0053:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.height = 30;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib5_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib6_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib7_c()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a7);
                        }
                        addr00ab:
                        return _loc1_;
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0053);
            }
            §§goto(addr0049);
         }
         §§goto(addr00a7);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               addr003d:
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     §§goto(addr0068);
                  }
               }
               §§goto(addr007c);
            }
            addr0068:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007c:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr007e);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0048:
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr0048);
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.top = -5;
               if(!_loc3_)
               {
                  _loc1_.left = 10;
                  if(!_loc3_)
                  {
                     _loc1_.id = "patrolIcon";
                     if(_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr007f);
               }
               addr0067:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0088);
                     }
                     §§goto(addr009a);
                  }
               }
               §§goto(addr0088);
            }
         }
         addr0088:
         this.patrolIcon = _loc1_;
         if(!(_loc3_ && Boolean(this)))
         {
            addr009a:
            BindingManager.executeBindings(this,"patrolIcon",this.patrolIcon);
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 33;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_LocaLabel2_i()];
                        addr0067:
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr008a:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr008a);
               }
               §§goto(addr009e);
            }
         }
         §§goto(addr0067);
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "eventName";
            if(!_loc3_)
            {
               _loc1_.maxHeight = 30;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "header";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0085:
                              this.header = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 BindingManager.executeBindings(this,"header",this.header);
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr007c);
            }
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.styleName = "postitBlueHeaderBig";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0053:
                  _loc1_.id = "rateLabel";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
               }
               addr008f:
               this.rateLabel = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00a1:
                  BindingManager.executeBindings(this,"rateLabel",this.rateLabel);
               }
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr0053);
      }
      
      private function _PatrolOptionsItemRenderer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               addr0029:
               _loc1_.useConfirmation = true;
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.__selectBtn_click);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0058:
                     _loc1_.id = "selectBtn";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008d:
                                 this.selectBtn = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0097:
                                    BindingManager.executeBindings(this,"selectBtn",this.selectBtn);
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr0097);
                           }
                           addr00a4:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr008d);
               }
            }
            §§goto(addr0058);
         }
         §§goto(addr0029);
      }
      
      public function __selectBtn_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onSelect(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterImg() : BriskImageDynaLib
      {
         return this._1443223590characterImg;
      }
      
      public function set characterImg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1443223590characterImg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1443223590characterImg = param1;
                  addr003b:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterImg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1004941354currencyIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1004941354currencyIcon = param1;
                  if(!_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1221270899header = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1161933810headerGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0040:
                  this._1161933810headerGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolIcon() : BriskImageDynaLib
      {
         return this._1914490085patrolIcon;
      }
      
      public function set patrolIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1914490085patrolIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1914490085patrolIcon = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0051);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1481293013priceLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003d:
                  this._1481293013priceLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr005a);
            }
            addr0080:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get rateLabel() : LocaLabel
      {
         return this._198462964rateLabel;
      }
      
      public function set rateLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._198462964rateLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._198462964rateLabel = param1;
                  addr004a:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rateLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightSide() : VGroup
      {
         return this._1569151597rightSide;
      }
      
      public function set rightSide(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1569151597rightSide;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1569151597rightSide = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightSide",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get selectBtn() : MultistateButton
      {
         return this._1716002880selectBtn;
      }
      
      public function set selectBtn(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1716002880selectBtn;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004e:
                  this._1716002880selectBtn = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0069);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectBtn",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
   }
}

