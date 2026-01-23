package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.VScrollItemSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ProfessionalCharacteristicsComponent extends Group
   {
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1790172313characterList:List;
      
      private var _1725723944informationLabel:LocaLabel;
      
      private var _1981812331operationAmountLabel:LocaLabel;
      
      private var _1451097651operationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IProfessionalCharacteristicsVo;
      
      private var _isDirty:Boolean;
      
      public function ProfessionalCharacteristicsComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               §§goto(addr0030);
            }
            §§goto(addr004c);
         }
         addr0030:
         if(_loc2_)
         {
            addr004c:
            this.percentWidth = 100;
            if(_loc2_ || _loc1_)
            {
               this.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib1_c(),this._ProfessionalCharacteristicsComponent_VGroup1_c()];
            }
         }
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
               §§goto(addr0032);
            }
            §§goto(addr0048);
         }
         addr0032:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0048:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:IProfessionalCharacteristicsVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  addr0056:
                  this._isDirty = true;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._data = param1;
                     if(_loc2_ || Boolean(this))
                     {
                        addr007a:
                        invalidateProperties();
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr007a);
            }
            addr007f:
            return;
         }
         §§goto(addr0056);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0066);
                  }
                  addr0067:
                  §§push(this._isDirty);
                  if(!_loc2_)
                  {
                     addr0066:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           addr0082:
                           this.fillContent();
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0066);
            }
            addr0088:
            return;
         }
         §§goto(addr0082);
      }
      
      private function fillContent() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            this.operationAmountLabel.text = this._data.operationsLeft.toString();
            if(!_loc4_)
            {
               addr0036:
               §§push(this.operationLabel);
               if(_loc3_ || _loc1_)
               {
                  §§pop().text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.operations");
                  if(_loc3_)
                  {
                     addr005e:
                     this.operationLabel.toolTip = this.operationLabel.text;
                     addr005a:
                     if(_loc3_ || Boolean(this))
                     {
                        this.informationLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.information");
                     }
                  }
                  var _loc1_:ArrayCollection = new ArrayCollection();
                  if(!_loc4_)
                  {
                     if(this._data.characteristicEntries.length)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_ = 0;
                        }
                        while(true)
                        {
                           if(_loc2_ >= this._data.characteristicEntries.length)
                           {
                              if(_loc3_)
                              {
                                 addr0105:
                                 this.characterList.dataProvider = _loc1_;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr0124);
                           }
                           _loc1_.addItem(this._data.characteristicEntries[_loc2_]);
                           if(!(_loc3_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           _loc2_++;
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        this.buyButton.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.rehire");
                        addr0124:
                        return;
                        addr00f2:
                     }
                     §§goto(addr0105);
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr005e);
            }
            §§goto(addr005a);
         }
         §§goto(addr0036);
      }
      
      private function handleBuyOperation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            dispatchEvent(new Event("buyOperation",true));
         }
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup_new";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr004f:
               _loc1_.dynaBmpSourceName = "quadrillepaper_newproduktion";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
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
         §§goto(addr004f);
      }
      
      private function _ProfessionalCharacteristicsComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.paddingTop = 20;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.paddingBottom = 20;
                  if(!_loc3_)
                  {
                     _loc1_.paddingLeft = 18;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.width = 214;
                        if(!_loc3_)
                        {
                           addr0072:
                           _loc1_.gap = 4;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_Group2_c(),this._ProfessionalCharacteristicsComponent_Group3_c(),this._ProfessionalCharacteristicsComponent_Group4_c()];
                              addr0084:
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00c8:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00c8);
                           }
                        }
                        addr00cc:
                        return _loc1_;
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr0084);
               }
            }
            §§goto(addr0072);
         }
         §§goto(addr0084);
      }
      
      private function _ProfessionalCharacteristicsComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_HGroup1_c(),this._ProfessionalCharacteristicsComponent_LocaLabel1_i()];
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0070);
      }
      
      private function _ProfessionalCharacteristicsComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               addr0033:
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr00a3);
            }
            addr005e:
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib2_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib3_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib4_c()];
               addr0068:
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00a3:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               §§goto(addr004a);
            }
            §§goto(addr0069);
         }
         addr004a:
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0048);
            }
            §§goto(addr007a);
         }
         addr0048:
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               if(_loc2_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr0071);
            }
            addr005d:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0071:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0075);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.left = 8;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.styleName = "departmentSecurityLabel";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0066:
                        _loc1_.maxDisplayedLines = 1;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "informationLabel";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr0098);
                                 }
                                 §§goto(addr00c6);
                              }
                           }
                        }
                        §§goto(addr00b4);
                     }
                  }
                  §§goto(addr00c6);
               }
               addr0098:
               _loc1_.document = this;
               if(_loc3_ || Boolean(this))
               {
                  addr00b4:
                  this.informationLabel = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr00c6:
                     BindingManager.executeBindings(this,"informationLabel",this.informationLabel);
                  }
               }
               return _loc1_;
            }
            §§goto(addr00c6);
         }
         §§goto(addr0066);
      }
      
      private function _ProfessionalCharacteristicsComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_List1_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0075:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0079);
               }
            }
            §§goto(addr0075);
         }
         addr0079:
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.left = 14;
                  if(_loc2_)
                  {
                     _loc1_.top = 4;
                     if(_loc2_)
                     {
                        _loc1_.focusEnabled = false;
                        addr0061:
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr009f);
               }
               addr0081:
               _loc1_.itemRenderer = this._ProfessionalCharacteristicsComponent_ClassFactory1_c();
               if(_loc2_)
               {
                  _loc1_.setStyle("horizontalScrollPolicy","off");
                  if(_loc2_)
                  {
                     addr009f:
                     _loc1_.setStyle("skinClass",VScrollItemSkin);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "characterList";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00e9);
                  }
                  addr00e0:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr00e9:
                     this.characterList = _loc1_;
                     if(!_loc3_)
                     {
                        addr00f3:
                        BindingManager.executeBindings(this,"characterList",this.characterList);
                     }
                  }
                  §§goto(addr0100);
               }
               addr0100:
               return _loc1_;
            }
            §§goto(addr00e0);
         }
         §§goto(addr0061);
      }
      
      private function _ProfessionalCharacteristicsComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = ScrollTextItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_HGroup2_c(),this._ProfessionalCharacteristicsComponent_HGroup3_c()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0066);
         }
         addr007e:
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  addr0035:
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_BriskImageDynaLib5_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib6_c(),this._ProfessionalCharacteristicsComponent_BriskImageDynaLib7_c()];
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a8:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00bc:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr00a8);
                     }
                  }
               }
               §§goto(addr00bc);
            }
            §§goto(addr0035);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_left";
               addr003e:
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  addr0052:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0084);
               }
               addr0088:
               return _loc1_;
            }
            §§goto(addr0084);
         }
         §§goto(addr0052);
      }
      
      private function _ProfessionalCharacteristicsComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               addr0037:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _ProfessionalCharacteristicsComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.paddingTop = 4;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr004e:
                     _loc1_.paddingRight = -2;
                     if(_loc3_)
                     {
                        _loc1_.paddingLeft = 8;
                        if(!_loc2_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr0082);
                     }
                     addr0070:
                     _loc1_.gap = 5;
                     if(_loc3_ || _loc2_)
                     {
                        addr0082:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._ProfessionalCharacteristicsComponent_LocaLabel2_i(),this._ProfessionalCharacteristicsComponent_LocaLabel3_i(),this._ProfessionalCharacteristicsComponent_DynamicPlusButton1_i()];
                           §§goto(addr0095);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr0095);
                  }
                  addr0095:
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr00da:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00de);
               }
               §§goto(addr004e);
            }
            addr00de:
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = 8;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0060:
                     _loc1_.styleName = "departmentSecurityLabel";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.maxDisplayedLines = 1;
                        if(_loc2_)
                        {
                           _loc1_.id = "operationLabel";
                           if(!_loc3_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00ab:
                                       this.operationLabel = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00b5:
                                          BindingManager.executeBindings(this,"operationLabel",this.operationLabel);
                                       }
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00ab);
                           }
                           addr00c2:
                           return _loc1_;
                        }
                        §§goto(addr00ab);
                     }
                  }
                  §§goto(addr0096);
               }
            }
            §§goto(addr00a2);
         }
         §§goto(addr0060);
      }
      
      private function _ProfessionalCharacteristicsComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "professionalOperationAmountLabel";
                  if(_loc3_)
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "operationAmountLabel";
                        if(_loc3_)
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr00a2);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        addr00a2:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00ab:
                           this.operationAmountLabel = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              BindingManager.executeBindings(this,"operationAmountLabel",this.operationAmountLabel);
                           }
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00ab);
                  }
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr00ab);
      }
      
      private function _ProfessionalCharacteristicsComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.iconImageName = "buy_button_icon";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr00dd);
                  }
                  addr007b:
                  _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.addEventListener("click",this.__buyButton_click);
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr00aa);
                     }
                     §§goto(addr00bd);
                  }
                  addr00aa:
                  _loc1_.id = "buyButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00bd:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr00dd:
                              this.buyButton = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00ef:
                                 BindingManager.executeBindings(this,"buyButton",this.buyButton);
                              }
                           }
                           §§goto(addr00fc);
                        }
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr00fc);
               }
               §§goto(addr00ef);
            }
            addr00fc:
            return _loc1_;
         }
         §§goto(addr00aa);
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleBuyOperation();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1271589544buyButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1271589544buyButton = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get characterList() : List
      {
         return this._1790172313characterList;
      }
      
      public function set characterList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1790172313characterList;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1790172313characterList = param1;
                  addr0047:
                  if(!_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get informationLabel() : LocaLabel
      {
         return this._1725723944informationLabel;
      }
      
      public function set informationLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1725723944informationLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1725723944informationLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get operationAmountLabel() : LocaLabel
      {
         return this._1981812331operationAmountLabel;
      }
      
      public function set operationAmountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1981812331operationAmountLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1981812331operationAmountLabel = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0067);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationAmountLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get operationLabel() : LocaLabel
      {
         return this._1451097651operationLabel;
      }
      
      public function set operationLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1451097651operationLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1451097651operationLabel = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr005b);
      }
   }
}

