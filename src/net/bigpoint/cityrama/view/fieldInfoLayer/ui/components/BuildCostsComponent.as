package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class BuildCostsComponent extends Group implements IStateClient2
   {
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _1229032395ddPriceLabel:LocaLabel;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _1229408559orLabel:LocaLabel;
      
      private var _717437366sellAmount:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionMiniLayerVo;
      
      private var _dataIsDirty:Boolean;
      
      public function BuildCostsComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.mxmlContent = [this._BuildCostsComponent_HGroup1_c()];
                  if(_loc1_ || _loc1_)
                  {
                     addr005b:
                     this.currentState = "normal";
                     if(!_loc2_)
                     {
                        addr0067:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0067);
               }
               addr008f:
               return;
            }
            §§goto(addr005b);
         }
         §§goto(addr0067);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0035:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0035);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:ConstructionMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(this))
               {
                  this._dataIsDirty = true;
                  if(_loc2_ || Boolean(param1))
                  {
                     this._data = param1;
                     if(_loc2_)
                     {
                        addr005b:
                        invalidateProperties();
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr005b);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr005b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._dataIsDirty)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this._dataIsDirty = false;
                  if(!_loc2_)
                  {
                     §§push(this.image);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this._data);
                        if(_loc1_ || Boolean(this))
                        {
                           §§push(§§pop().assetImageName);
                           if(!_loc2_)
                           {
                              §§pop().dynaBmpSourceName = §§pop();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(this.image);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr0085:
                                    §§pop().dynaLibName = this._data.assetLibName;
                                    addr0082:
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(this.itemAmount);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§pop().text = this._data.amountOwned.toString();
                                          if(_loc1_)
                                          {
                                             this.sellAmount.text = Math.abs(this._data.amountNeeded) + "x";
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00db:
                                                if(this._data.amountOwned >= this._data.amountNeeded)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.checkMark);
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         §§push("checkmark_green_small");
                                                         if(_loc1_)
                                                         {
                                                            §§pop().dynaBmpSourceName = §§pop();
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               addr0124:
                                                               §§push(this.frameBG);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§push("needframe_bg_green");
                                                                  if(_loc1_)
                                                                  {
                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr014c:
                                                                        §§push(this.image);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           addr015d:
                                                                           §§pop().alpha = 1;
                                                                           if(_loc1_)
                                                                           {
                                                                              addr0167:
                                                                              §§push(this.itemAmount);
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push("color");
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(7303023);
                                                                                    if(_loc1_ || Boolean(this))
                                                                                    {
                                                                                       §§pop().setStyle(§§pop(),§§pop());
                                                                                       if(_loc1_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr01e0);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr01ce:
                                                                                       §§pop().setStyle(§§pop(),§§pop());
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr01e0);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01fe);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01cc:
                                                                                    §§push(7303023);
                                                                                 }
                                                                                 §§goto(addr01ce);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01c9:
                                                                                 §§push("color");
                                                                              }
                                                                              §§goto(addr01cc);
                                                                           }
                                                                           §§goto(addr01fe);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01bb:
                                                                           §§pop().alpha = 0.5;
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr01c5:
                                                                              §§goto(addr01c9);
                                                                              §§push(this.itemAmount);
                                                                           }
                                                                        }
                                                                        §§goto(addr01e0);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01b7:
                                                                        §§push(this.image);
                                                                     }
                                                                     §§goto(addr01bb);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01a8:
                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§goto(addr01b7);
                                                                     }
                                                                  }
                                                                  §§goto(addr01e0);
                                                               }
                                                               else
                                                               {
                                                                  addr01a5:
                                                                  §§push("needframe_bg_grey");
                                                               }
                                                               §§goto(addr01a8);
                                                            }
                                                            §§goto(addr01b7);
                                                         }
                                                         else
                                                         {
                                                            addr019a:
                                                            §§pop().dynaBmpSourceName = §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               addr01a1:
                                                               §§goto(addr01a5);
                                                               §§push(this.frameBG);
                                                            }
                                                         }
                                                         §§goto(addr01c5);
                                                      }
                                                      else
                                                      {
                                                         addr0197:
                                                         §§push("checkmark_grey_small");
                                                      }
                                                      §§goto(addr019a);
                                                   }
                                                   §§goto(addr0124);
                                                }
                                                else
                                                {
                                                   §§push(this.checkMark);
                                                }
                                                §§goto(addr0197);
                                             }
                                             §§goto(addr0167);
                                          }
                                          addr01e0:
                                          this.ddPriceLabel.text = this._data.realCurrencyCosts.toString();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr01fe:
                                             this.orLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
                                          }
                                          §§goto(addr020f);
                                       }
                                       §§goto(addr01c9);
                                    }
                                    §§goto(addr014c);
                                 }
                                 §§goto(addr015d);
                              }
                              §§goto(addr01a1);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr01bb);
                  }
                  §§goto(addr01fe);
               }
               §§goto(addr00db);
            }
            addr020f:
            return;
         }
         §§goto(addr01a1);
      }
      
      private function _BuildCostsComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.width = 157;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.gap = 10;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._BuildCostsComponent_HGroup2_c(),this._BuildCostsComponent_LocaLabel3_i(),this._BuildCostsComponent_HGroup4_c()];
                        addr007b:
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr00ac);
                        }
                     }
                     §§goto(addr00c0);
                  }
                  addr00ac:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr00c0:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c4);
               }
               addr00c4:
               return _loc1_;
            }
         }
         §§goto(addr007b);
      }
      
      private function _BuildCostsComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 10;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0057:
                  _loc1_.mxmlContent = [this._BuildCostsComponent_HGroup3_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0057);
         }
         §§goto(addr0073);
      }
      
      private function _BuildCostsComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0047:
               _loc1_.maxHeight = 83;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._BuildCostsComponent_VGroup1_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr006e);
               }
               addr0062:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr006e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0072);
            }
            addr0072:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _BuildCostsComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.maxHeight = 83;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.gap = 5;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._BuildCostsComponent_LocaLabel1_i(),this._BuildCostsComponent_Group2_i(),this._BuildCostsComponent_LocaLabel2_i()];
                        §§goto(addr0063);
                     }
                  }
               }
               §§goto(addr00a6);
            }
            addr0063:
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a6:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _BuildCostsComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "sellAmountLabel";
            if(_loc3_)
            {
               _loc1_.id = "sellAmount";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004d:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0081);
                     }
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr004d);
         }
         addr0077:
         this.sellAmount = _loc1_;
         if(!_loc2_)
         {
            addr0081:
            BindingManager.executeBindings(this,"sellAmount",this.sellAmount);
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.width = 60;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 52;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BuildCostsComponent_BriskImageDynaLib1_i(),this._BuildCostsComponent_BriskImageDynaLib2_i(),this._BuildCostsComponent_BriskImageDynaLib3_i()];
                     if(_loc3_)
                     {
                        addr006f:
                        _loc1_.id = "goodContainer";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0098:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a9:
                                    this.goodContainer = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b3:
                                       BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
                                    }
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr0098);
                  }
                  addr00c0:
                  return _loc1_;
               }
               §§goto(addr0098);
            }
         }
         §§goto(addr006f);
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr0063:
                        _loc1_.id = "frameBG";
                        if(_loc3_)
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr0098:
                                    this.frameBG = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00a2:
                                       BindingManager.executeBindings(this,"frameBG",this.frameBG);
                                    }
                                    §§goto(addr00af);
                                 }
                                 §§goto(addr00a2);
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr0098);
                        }
                     }
                  }
                  addr00af:
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr0098);
         }
         §§goto(addr006e);
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     addr003f:
                     _loc1_.maxWidth = 60;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.maxHeight = 52;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0072:
                           _loc1_.smoothing = true;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0084:
                              _loc1_.maintainAspectRation = true;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.id = "image";
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00a9:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00ca:
                                          _loc1_.document = this;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr00db:
                                             this.image = _loc1_;
                                             if(!_loc2_)
                                             {
                                                addr00e5:
                                                BindingManager.executeBindings(this,"image",this.image);
                                             }
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00e5);
                        }
                        addr00f2:
                        return _loc1_;
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr003f);
            }
            §§goto(addr0084);
         }
         §§goto(addr00a9);
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_grey_small";
               if(_loc3_)
               {
                  addr0037:
                  _loc1_.top = 0;
                  if(_loc3_)
                  {
                     _loc1_.right = 0;
                     if(!_loc2_)
                     {
                        _loc1_.id = "checkMark";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr008c:
                                    this.checkMark = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr0096:
                                       BindingManager.executeBindings(this,"checkMark",this.checkMark);
                                    }
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr0096);
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0096);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr0037);
         }
         §§goto(addr0096);
      }
      
      private function _BuildCostsComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "itemAmount";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr008d);
                     }
                  }
                  addr0083:
                  this.itemAmount = _loc1_;
                  if(_loc2_)
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr008d);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _BuildCostsComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.styleName = "expansionBlue";
               if(_loc3_)
               {
                  _loc1_.id = "orLabel";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr0088:
                  this.orLabel = _loc1_;
                  if(_loc3_)
                  {
                     addr0092:
                     BindingManager.executeBindings(this,"orLabel",this.orLabel);
                  }
                  §§goto(addr009f);
               }
               addr009f:
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _BuildCostsComponent_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 10;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               addr002c:
               if(_loc3_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr0084);
            }
            addr0042:
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._BuildCostsComponent_LocaLabel4_i(),this._BuildCostsComponent_BriskImageDynaLib4_c()];
               if(!_loc2_)
               {
                  §§goto(addr0070);
               }
               §§goto(addr0084);
            }
            addr0070:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _BuildCostsComponent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "expansionGrey";
                  if(!_loc3_)
                  {
                     _loc1_.id = "ddPriceLabel";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0099:
                                 this.ddPriceLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"ddPriceLabel",this.ddPriceLabel);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr00b0:
                  return _loc1_;
               }
               §§goto(addr0099);
            }
            §§goto(addr0088);
         }
         §§goto(addr0099);
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_mm";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
            }
            §§goto(addr006d);
         }
         addr0071:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._398367733checkMark;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._398367733checkMark = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabel() : LocaLabel
      {
         return this._1229032395ddPriceLabel;
      }
      
      public function set ddPriceLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1229032395ddPriceLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1229032395ddPriceLabel = param1;
                  addr0041:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabel",_loc2_,param1));
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
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get frameBG() : BriskImageDynaLib
      {
         return this._607253902frameBG;
      }
      
      public function set frameBG(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._607253902frameBG;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._607253902frameBG = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frameBG",_loc2_,param1));
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodContainer() : Group
      {
         return this._1484033980goodContainer;
      }
      
      public function set goodContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1484033980goodContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0041:
                  this._1484033980goodContainer = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
            addr0088:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100313435image;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._100313435image = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
            addr008d:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmount() : LocaLabel
      {
         return this._1478417739itemAmount;
      }
      
      public function set itemAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1478417739itemAmount;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1478417739itemAmount = param1;
                  addr0038:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get orLabel() : LocaLabel
      {
         return this._1229408559orLabel;
      }
      
      public function set orLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1229408559orLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1229408559orLabel = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"orLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get sellAmount() : LocaLabel
      {
         return this._717437366sellAmount;
      }
      
      public function set sellAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._717437366sellAmount;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._717437366sellAmount = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellAmount",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
   }
}

