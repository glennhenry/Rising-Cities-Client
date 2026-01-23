package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.view.common.components.CategoryListComponent;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public class CityTreasuryTabContent extends Group
   {
      
      private var _426022781categoryMenu:CategoryListComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _908635023leftLayerContent:Group;
      
      private var _66491520mainContent:CityTreasuryContentComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityTreasuryTabVo;
      
      private var _isDirty:Boolean;
      
      private var _currentSelectedCategoryIndex:int = -1;
      
      private var _currentSelectedPackIndex:int = -1;
      
      public function CityTreasuryTabContent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0042:
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(!_loc1_)
                     {
                        addr0056:
                        this.bottom = 3;
                        if(_loc2_)
                        {
                           this.top = -24;
                           addr0061:
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr007d);
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0061);
            }
            addr007d:
            this.left = -2;
            if(_loc2_ || _loc1_)
            {
               addr008f:
               this.mxmlContent = [this._CityTreasuryTabContent_VGroup1_c()];
            }
            return;
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0043:
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(this._data));
               if(_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr0053);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0052);
                  }
               }
               addr0053:
               §§push(this._isDirty);
               if(_loc1_)
               {
                  addr0052:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     this._isDirty = false;
                     if(!_loc2_)
                     {
                        §§push(this.categoryMenu);
                        if(!_loc2_)
                        {
                           §§pop().removeEventListener(IndexChangeEvent.CHANGE,this.handleCategoryChanged);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(this.mainContent);
                              if(!_loc2_)
                              {
                                 §§pop().removeEventListener(IndexChangeEvent.CHANGE,this.handlePackChanged);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr01a2);
                              }
                              §§goto(addr01a6);
                           }
                           §§goto(addr0182);
                        }
                        §§goto(addr014f);
                     }
                     addr00a5:
                     this.flavourText.text = this._data.flavourText;
                     if(!_loc2_)
                     {
                        addr00b7:
                        §§push(this._currentSelectedCategoryIndex);
                        if(!_loc2_)
                        {
                           §§push(-1);
                           if(_loc1_ || _loc2_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr01c1);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr00f7);
                     }
                     addr00e2:
                     this._currentSelectedCategoryIndex = this._data.categoryToOpen;
                     if(_loc1_)
                     {
                        addr00f3:
                        addr00f9:
                        addr00f7:
                        if(this._currentSelectedPackIndex == -1)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0102);
                           }
                           §§goto(addr01a2);
                        }
                        §§goto(addr0113);
                     }
                     addr0102:
                     this._currentSelectedPackIndex = this._data.packToSelect;
                     if(!_loc2_)
                     {
                        addr0113:
                        §§push(this.categoryMenu);
                        if(_loc1_ || Boolean(this))
                        {
                           §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleCategoryChanged);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this.categoryMenu);
                              if(_loc1_ || _loc2_)
                              {
                                 addr014f:
                                 §§pop().data = this._data.categoryMenuList;
                                 if(_loc1_ || Boolean(this))
                                 {
                                    §§push(this.categoryMenu);
                                    if(!_loc2_)
                                    {
                                       addr016e:
                                       §§pop().selectedIndex = this._currentSelectedCategoryIndex;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§goto(addr0190);
                                       }
                                       §§goto(addr01a2);
                                    }
                                    §§goto(addr0190);
                                 }
                                 §§goto(addr01c1);
                              }
                              addr0190:
                              this.categoryMenu.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleCategoryListReady);
                              §§goto(addr0182);
                           }
                           addr0182:
                           if(_loc1_)
                           {
                              addr01a6:
                              this.mainContent.addEventListener(IndexChangeEvent.CHANGE,this.handlePackChanged);
                              addr01a2:
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr01c1:
                                 this.handleCategoryChanged();
                              }
                           }
                           §§goto(addr01c6);
                        }
                        §§goto(addr016e);
                     }
                     §§goto(addr01c6);
                  }
                  §§goto(addr0182);
               }
               addr01c6:
               return;
            }
            §§goto(addr00f3);
         }
         §§goto(addr00b7);
      }
      
      private function handlePackChanged(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               this._currentSelectedPackIndex = param1.newIndex;
            }
         }
      }
      
      private function handleCategoryListReady(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.categoryMenu);
            if(!_loc2_)
            {
               §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleCategoryListReady);
               if(_loc3_)
               {
                  addr0043:
                  this.categoryMenu.selectedIndex = this._currentSelectedCategoryIndex;
               }
               §§goto(addr004a);
            }
            §§goto(addr0043);
         }
         addr004a:
      }
      
      private function handleCategoryChanged(param1:IndexChangeEvent = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0032:
                  if(param1.oldIndex != param1.newIndex)
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        this._currentSelectedCategoryIndex = param1.newIndex;
                        if(!_loc4_)
                        {
                           addr0059:
                           this._currentSelectedPackIndex = 0;
                           if(!_loc4_)
                           {
                              addr0071:
                              §§push(this._data);
                              if(!_loc4_)
                              {
                                 if(§§pop().categories[param1.oldIndex].contentVo is CityTreasuryBonusCodeVo)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00cd:
                                       addr009d:
                                       §§push(this._data);
                                       if(_loc3_)
                                       {
                                          (§§pop().categories[param1.oldIndex].contentVo as CityTreasuryBonusCodeVo).errorLabel = "";
                                          addr00bc:
                                          §§push(this._data);
                                       }
                                       var _loc2_:CityTreasuryCategoryVo = §§pop().categories[this._currentSelectedCategoryIndex];
                                       if(!_loc4_)
                                       {
                                          _loc2_.preSelectedPackIndex = this._currentSelectedPackIndex;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr00f6:
                                             this.mainContent.data = _loc2_;
                                          }
                                          return;
                                       }
                                       §§goto(addr00f6);
                                    }
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr0059);
            }
            §§goto(addr00bc);
         }
         §§goto(addr0032);
      }
      
      public function set data(param1:CityTreasuryTabVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  this._data = param1;
                  if(_loc2_ || _loc2_)
                  {
                     this._isDirty = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr007c:
                        invalidateProperties();
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr007c);
            }
         }
         addr0081:
      }
      
      public function get currentSelectedCategoryIndex() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._currentSelectedCategoryIndex);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() != -1)
               {
                  if(_loc1_)
                  {
                     addr003b:
                     §§push(this._currentSelectedCategoryIndex);
                     if(!(_loc2_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr004d:
                     §§push(0);
                  }
                  §§goto(addr004f);
               }
               §§goto(addr004d);
            }
            addr004f:
            return §§pop();
         }
         §§goto(addr003b);
      }
      
      public function get currentSelectedPackIndex() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._currentSelectedPackIndex);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != -1)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr0043:
                     §§push(this._currentSelectedPackIndex);
                     if(_loc1_)
                     {
                        §§goto(addr004c);
                     }
                  }
                  else
                  {
                     addr004d:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr004d);
            }
            addr004c:
            return §§pop();
         }
         §§goto(addr0043);
      }
      
      public function resetIndexes() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._currentSelectedCategoryIndex = -1;
            if(_loc2_ || _loc1_)
            {
               addr0029:
               this._currentSelectedCategoryIndex = -1;
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function _CityTreasuryTabContent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.gap = 3;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.percentWidth = 100;
                     if(_loc3_)
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_)
                        {
                           addr0084:
                           _loc1_.mxmlContent = [this._CityTreasuryTabContent_VGroup2_c(),this._CityTreasuryTabContent_HGroup1_c()];
                           if(!_loc2_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ae);
                        }
                     }
                  }
                  addr009a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00ae:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0064);
         }
         §§goto(addr0084);
      }
      
      private function _CityTreasuryTabContent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  addr0050:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.height = 48;
                     if(!_loc2_)
                     {
                        addr0064:
                        _loc1_.horizontalCenter = 0;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._CityTreasuryTabContent_LocaLabel1_i()];
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr0092);
                           }
                           §§goto(addr009e);
                        }
                        addr0092:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr009e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr009e);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr0064);
      }
      
      private function _CityTreasuryTabContent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "twelveFlavourText";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 80;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0065:
                     _loc1_.id = "flavourText";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 this.flavourText = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b5:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00c2);
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00c2);
            }
            §§goto(addr0065);
         }
         addr00c2:
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.gap = 2;
                  if(!_loc2_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryTabContent_Group2_i(),this._CityTreasuryTabContent_CityTreasuryContentComponent1_i()];
                        if(_loc3_ || _loc3_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
               }
               §§goto(addr0088);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0094);
      }
      
      private function _CityTreasuryTabContent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 186;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.maxWidth = 186;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryTabContent_DebossedBackgroundComponent1_c(),this._CityTreasuryTabContent_VGroup3_c()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "leftLayerContent";
                        if(_loc3_)
                        {
                           addr007d:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr009f:
                                    this.leftLayerContent = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00b1:
                                       BindingManager.executeBindings(this,"leftLayerContent",this.leftLayerContent);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0096);
            }
         }
         §§goto(addr009f);
      }
      
      private function _CityTreasuryTabContent_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr003f:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr0055);
            }
            addr0049:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0055:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _CityTreasuryTabContent_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.paddingLeft = 5;
                  if(_loc3_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr00c6);
               }
               addr0066:
               _loc1_.paddingRight = 5;
               if(_loc3_)
               {
                  _loc1_.paddingTop = 2;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0084);
                  }
                  §§goto(addr00d2);
               }
               addr0084:
               _loc1_.paddingBottom = 4;
               if(!_loc2_)
               {
                  addr008f:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        §§goto(addr00b6);
                     }
                     §§goto(addr00c6);
                  }
                  addr00b6:
                  _loc1_.mxmlContent = [this._CityTreasuryTabContent_CategoryListComponent1_i()];
                  if(_loc3_)
                  {
                     addr00c6:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00d2:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00d6);
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr00c6);
      }
      
      private function _CityTreasuryTabContent_CategoryListComponent1_i() : CategoryListComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CategoryListComponent = new CategoryListComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 176;
            if(_loc3_)
            {
               _loc1_.height = 310;
               if(_loc3_)
               {
                  addr0041:
                  _loc1_.maxHeight = 310;
                  if(!_loc2_)
                  {
                     _loc1_.maxWidth = 176;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "categoryMenu";
                        if(_loc3_)
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00a0:
                                    this.categoryMenu = _loc1_;
                                    if(_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"categoryMenu",this.categoryMenu);
                                    }
                                 }
                                 §§goto(addr00b7);
                              }
                           }
                           §§goto(addr00a0);
                        }
                        addr00b7:
                        return _loc1_;
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr00a0);
            }
            §§goto(addr008f);
         }
         §§goto(addr0041);
      }
      
      private function _CityTreasuryTabContent_CityTreasuryContentComponent1_i() : CityTreasuryContentComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityTreasuryContentComponent = new CityTreasuryContentComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 310;
               if(!_loc2_)
               {
                  _loc1_.id = "mainContent";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0092:
                              this.mainContent = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a4:
                                 BindingManager.executeBindings(this,"mainContent",this.mainContent);
                              }
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0092);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr0092);
         }
         §§goto(addr00a4);
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryMenu() : CategoryListComponent
      {
         return this._426022781categoryMenu;
      }
      
      public function set categoryMenu(param1:CategoryListComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._426022781categoryMenu;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._426022781categoryMenu = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0067);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get leftLayerContent() : Group
      {
         return this._908635023leftLayerContent;
      }
      
      public function set leftLayerContent(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._908635023leftLayerContent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0040:
                  this._908635023leftLayerContent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftLayerContent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainContent() : CityTreasuryContentComponent
      {
         return this._66491520mainContent;
      }
      
      public function set mainContent(param1:CityTreasuryContentComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._66491520mainContent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._66491520mainContent = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainContent",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
   }
}

