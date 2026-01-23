package net.bigpoint.cityrama.view.optionsmenu.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.optionsmenu.ui.skins.VerticalBgScrollListSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class OptionsMenuPopup extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _531548239accountOptions:LocaLabel;
      
      private var _1623437438accountOptionsText:LocaLabel;
      
      private var _39840213editAccountButton:MultistateButton;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1383014836gameOptions:LocaLabel;
      
      private var _341169060optionsList:List;
      
      private var _750240179scrollShadow:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:OptionsDetailViewVo;
      
      public function OptionsMenuPopup()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.showBackButton = false;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr005c:
                     this.width = 785;
                     if(_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005c);
            }
            addr0067:
            this.height = 430;
            if(_loc2_)
            {
               this.styleName = "optionsPopupWindow";
               if(!_loc1_)
               {
                  addr0088:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._OptionsMenuPopup_Array1_c);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr00a5:
                     this.addEventListener("creationComplete",this.___OptionsMenuPopup_PaperPopupWindow1_creationComplete);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00a5);
            }
            addr00b1:
            return;
         }
         §§goto(addr0088);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004f:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr004f);
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
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            title = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.title");
            if(!_loc1_)
            {
               this.flavorText.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.flavorText");
               if(_loc2_)
               {
                  this.gameOptions.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.gameOptions");
                  if(_loc2_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr00a5);
               }
               addr0065:
               this.accountOptions.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptions");
               if(!(_loc1_ && _loc1_))
               {
                  this.accountOptionsText.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptionsText");
                  if(!_loc1_)
                  {
                     addr00a5:
                     this.editAccountButton.label = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptionsButton");
                  }
               }
               §§goto(addr00b8);
            }
            addr00b8:
            return;
         }
         §§goto(addr0065);
      }
      
      public function set data(param1:OptionsDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0037:
                  this._data = param1;
                  if(_loc3_)
                  {
                     addr0041:
                     invalidateProperties();
                  }
                  §§goto(addr0046);
               }
               §§goto(addr0041);
            }
            addr0046:
            return;
         }
         §§goto(addr0037);
      }
      
      public function get data() : OptionsDetailViewVo
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               if(this._data)
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0058:
                     this.optionsList.dataProvider = new ArrayCollection(this._data.optionsList);
                     if(!_loc2_)
                     {
                        addr0070:
                        §§push(this.editAccountButton);
                        §§push(this._data.isSsoUser);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().enabled = §§pop();
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0070);
               }
               addr0084:
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr0058);
      }
      
      private function handleEditAccountClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(OptionsItemRenderer.EVENT_EDIT_ACCOUNT));
         }
      }
      
      private function _OptionsMenuPopup_Array1_c() : Array
      {
         return [this._OptionsMenuPopup_VGroup1_c()];
      }
      
      private function _OptionsMenuPopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 340;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.bottom = 0;
                  if(!_loc2_)
                  {
                     addr005d:
                     _loc1_.gap = 18;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!_loc2_)
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00ac);
                  }
                  addr008e:
                  _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel1_i(),this._OptionsMenuPopup_VGroup2_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00ac:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00b8:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00b8);
            }
            §§goto(addr005d);
         }
         §§goto(addr00ac);
      }
      
      private function _OptionsMenuPopup_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.width = 700;
            if(!_loc2_)
            {
               _loc1_.height = 25;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "flavorText";
                     if(!_loc2_)
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00a0);
                           }
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0066);
            }
            §§goto(addr00a0);
         }
         addr0096:
         this.flavorText = _loc1_;
         if(!_loc2_)
         {
            addr00a0:
            BindingManager.executeBindings(this,"flavorText",this.flavorText);
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup1_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0088);
               }
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _OptionsMenuPopup_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0039:
               _loc1_.height = 280;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc3_)
                  {
                     addr0063:
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.gap = 5;
                        if(!_loc3_)
                        {
                           addr0086:
                           _loc1_.top = 18;
                           if(!_loc3_)
                           {
                              addr0090:
                              _loc1_.mxmlContent = [this._OptionsMenuPopup_Group1_c(),this._OptionsMenuPopup_Group5_c()];
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00b2:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr0086);
            }
            §§goto(addr0063);
         }
         §§goto(addr0039);
      }
      
      private function _OptionsMenuPopup_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 355;
            if(_loc2_ || _loc2_)
            {
               addr0047:
               _loc1_.height = 300;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._OptionsMenuPopup_DebossedBackgroundComponent1_c(),this._OptionsMenuPopup_Group2_c(),this._OptionsMenuPopup_Group4_c(),this._OptionsMenuPopup_BriskImageDynaLib1_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0095:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0095);
         }
         §§goto(addr0047);
      }
      
      private function _OptionsMenuPopup_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0060);
         }
         §§goto(addr0074);
      }
      
      private function _OptionsMenuPopup_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr003e);
            }
            §§goto(addr0085);
         }
         addr003e:
         _loc1_.height = 55;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup2_c(),this._OptionsMenuPopup_HGroup3_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0085:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        addr006d:
                        _loc1_.mxmlContent = [this._OptionsMenuPopup_BlueBarComponent1_c()];
                        if(!_loc2_)
                        {
                           addr007d:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0091:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0091);
                  }
                  addr0095:
                  return _loc1_;
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr007d);
      }
      
      private function _OptionsMenuPopup_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc3_)
         {
            _loc1_.width = 340;
            if(_loc2_)
            {
               addr0036:
               _loc1_.height = 33;
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _OptionsMenuPopup_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._OptionsMenuPopup_Group3_c()];
                        if(_loc2_ || _loc3_)
                        {
                           addr0098:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a8);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  addr00a8:
                  return _loc1_;
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr00a4);
      }
      
      private function _OptionsMenuPopup_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 18;
            if(_loc3_)
            {
               addr004a:
               _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel2_i()];
               if(!(_loc2_ && Boolean(this)))
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
         §§goto(addr004a);
      }
      
      private function _OptionsMenuPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.maxWidth = 500;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "sixteenWhiteCenter";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = 4;
                     if(!_loc2_)
                     {
                        _loc1_.id = "gameOptions";
                        if(!_loc2_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0089:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr009a:
                                    this.gameOptions = _loc1_;
                                    if(_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"gameOptions",this.gameOptions);
                                    }
                                 }
                                 §§goto(addr00b1);
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0071);
            }
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 270;
               if(!_loc2_)
               {
                  _loc1_.left = 12;
                  if(!_loc2_)
                  {
                     addr004c:
                     _loc1_.top = 48;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006a:
                        _loc1_.mxmlContent = [this._OptionsMenuPopup_List1_i()];
                        if(_loc3_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr008e);
                     }
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr008e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr006a);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr004c);
         }
         §§goto(addr006a);
      }
      
      private function _OptionsMenuPopup_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc3_)
         {
            _loc1_.itemRenderer = this._OptionsMenuPopup_ClassFactory1_c();
            if(_loc3_ || _loc2_)
            {
               _loc1_.useVirtualLayout = false;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.height = 247;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.top = 2;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008b:
                           _loc1_.right = 4;
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.setStyle("skinClass",VerticalBgScrollListSkin);
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00c7);
                           }
                        }
                        §§goto(addr0102);
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00b4);
            }
            §§goto(addr00c7);
         }
         addr00b4:
         _loc1_.id = "optionsList";
         if(_loc3_ || _loc3_)
         {
            addr00c7:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  §§goto(addr00d3);
               }
            }
            §§goto(addr00f0);
         }
         addr00d3:
         _loc1_.document = this;
         if(!(_loc2_ && Boolean(this)))
         {
            addr00f0:
            this.optionsList = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr0102:
               BindingManager.executeBindings(this,"optionsList",this.optionsList);
            }
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = OptionsItemRenderer;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "shadow_bottom";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 3;
                     if(!_loc2_)
                     {
                        addr0054:
                        _loc1_.left = 0;
                        if(_loc3_)
                        {
                           _loc1_.right = 2;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr007e:
                              _loc1_.id = "scrollShadow";
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0091:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00b0:
                                       _loc1_.document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00c1:
                                          this.scrollShadow = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00cb:
                                             BindingManager.executeBindings(this,"scrollShadow",this.scrollShadow);
                                          }
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00c1);
                              }
                           }
                           addr00d8:
                           return _loc1_;
                        }
                        §§goto(addr00b0);
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0054);
            }
            §§goto(addr00c1);
         }
         §§goto(addr0091);
      }
      
      private function _OptionsMenuPopup_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 355;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 300;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._OptionsMenuPopup_DebossedBackgroundComponent2_c(),this._OptionsMenuPopup_Group6_c(),this._OptionsMenuPopup_VGroup3_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0087:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr008b);
            }
            §§goto(addr0087);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_DebossedBackgroundComponent2_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr0050);
            }
            addr0044:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0050:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _OptionsMenuPopup_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 55;
               if(!_loc2_)
               {
                  addr004d:
                  _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup4_c(),this._OptionsMenuPopup_HGroup5_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr004d);
         }
         §§goto(addr0077);
      }
      
      private function _OptionsMenuPopup_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0061:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._OptionsMenuPopup_BlueBarComponent2_c()];
                        if(_loc3_ || _loc3_)
                        {
                           addr0097:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0061);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _OptionsMenuPopup_BlueBarComponent2_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 340;
            if(!_loc3_)
            {
               _loc1_.height = 33;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006a);
         }
         §§goto(addr005e);
      }
      
      private function _OptionsMenuPopup_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0059:
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._OptionsMenuPopup_Group7_c()];
                        if(!_loc3_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0094:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0080);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _OptionsMenuPopup_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 18;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel3_i()];
               addr0037:
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr006f);
            }
            addr0073:
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _OptionsMenuPopup_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.styleName = "sixteenWhiteCenter";
                  if(_loc3_)
                  {
                     _loc1_.top = 4;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0067:
                        _loc1_.id = "accountOptions";
                        if(_loc3_ || _loc3_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a2:
                                    this.accountOptions = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"accountOptions",this.accountOptions);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0067);
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr007a);
      }
      
      private function _OptionsMenuPopup_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.height = 200;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr0078:
                        _loc1_.top = 55;
                        if(_loc2_)
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00ba);
                  }
                  addr008e:
                  _loc1_.gap = 40;
                  if(_loc2_)
                  {
                     addr0098:
                     _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel4_i(),this._OptionsMenuPopup_MultistateButton1_i()];
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00ba:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00ba);
                  }
                  addr00be:
                  return _loc1_;
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr0098);
      }
      
      private function _OptionsMenuPopup_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.width = 220;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "optionsText";
               if(_loc3_)
               {
                  _loc1_.setStyle("textAlign","center");
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "accountOptionsText";
                     if(!_loc2_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009c:
                                 this.accountOptionsText = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"accountOptionsText",this.accountOptionsText);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                        }
                        §§goto(addr009c);
                     }
                     addr00b3:
                     return _loc1_;
                  }
                  §§goto(addr006b);
               }
               §§goto(addr009c);
            }
            §§goto(addr006b);
         }
         §§goto(addr00a6);
      }
      
      private function _OptionsMenuPopup_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 210;
            if(_loc3_ || _loc2_)
            {
               _loc1_.addEventListener("click",this.__editAccountButton_click);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "editAccountButton";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr009a);
                  }
                  addr0091:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr009a:
                     this.editAccountButton = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ac:
                        BindingManager.executeBindings(this,"editAccountButton",this.editAccountButton);
                     }
                  }
               }
               §§goto(addr00b9);
            }
            §§goto(addr00ac);
         }
         addr00b9:
         return _loc1_;
      }
      
      public function __editAccountButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleEditAccountClick();
         }
      }
      
      public function ___OptionsMenuPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get accountOptions() : LocaLabel
      {
         return this._531548239accountOptions;
      }
      
      public function set accountOptions(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._531548239accountOptions;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._531548239accountOptions = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accountOptions",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get accountOptionsText() : LocaLabel
      {
         return this._1623437438accountOptionsText;
      }
      
      public function set accountOptionsText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1623437438accountOptionsText;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1623437438accountOptionsText = param1;
                  addr0041:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accountOptionsText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get editAccountButton() : MultistateButton
      {
         return this._39840213editAccountButton;
      }
      
      public function set editAccountButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._39840213editAccountButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._39840213editAccountButton = param1;
                  addr0046:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"editAccountButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684755691flavorText = param1;
                  addr0038:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get gameOptions() : LocaLabel
      {
         return this._1383014836gameOptions;
      }
      
      public function set gameOptions(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1383014836gameOptions;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1383014836gameOptions = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameOptions",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get optionsList() : List
      {
         return this._341169060optionsList;
      }
      
      public function set optionsList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._341169060optionsList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._341169060optionsList = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionsList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollShadow() : BriskImageDynaLib
      {
         return this._750240179scrollShadow;
      }
      
      public function set scrollShadow(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._750240179scrollShadow;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._750240179scrollShadow = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollShadow",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
   }
}

