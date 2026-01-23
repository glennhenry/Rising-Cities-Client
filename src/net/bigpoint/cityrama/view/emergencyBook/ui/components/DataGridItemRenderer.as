package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DataGridItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const ITEM_SELECTED:String = "itemSelected";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         ITEM_SELECTED = "itemSelected";
      }
      
      private var _1273130016_DataGridItemRenderer_HGroup1:HGroup;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _1053257947countLabel:LocaLabel;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _865160299professionIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalListInfoVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DataGridItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.percentWidth = 100;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.autoDrawBackground = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.height = 33;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0078:
                           this.mxmlContent = [this._DataGridItemRenderer_HGroup1_i(),this._DataGridItemRenderer_HGroup2_c(),this._DataGridItemRenderer_BriskImageDynaLib6_c()];
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr009c:
                              this.currentState = "normal";
                              if(_loc2_ || Boolean(this))
                              {
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 }),new State({
                                    "name":"selected",
                                    "overrides":[new SetProperty().initializeFromObject({
                                       "target":"_DataGridItemRenderer_HGroup1",
                                       "name":"visible",
                                       "value":true
                                    })]
                                 })];
                                 addr00b0:
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr0078);
            }
         }
         §§goto(addr009c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0051);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr005c);
            }
            addr0051:
            return;
         }
         addr005c:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.data = param1;
            if(!_loc2_)
            {
               if(param1)
               {
                  if(_loc3_)
                  {
                     if(!RandomUtilities.isEqual(param1,this._data))
                     {
                        if(!_loc2_)
                        {
                           addr0058:
                           this._data = param1 as ProfessionalListInfoVo;
                           if(!_loc2_)
                           {
                              addr0066:
                              this._dataIsDirty = true;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0078:
                                 invalidateProperties();
                              }
                              §§goto(addr007d);
                           }
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0066);
               }
               addr007d:
               return;
            }
         }
         §§goto(addr0058);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = false;
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this._dataIsDirty);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this._dataIsDirty = false;
                        if(_loc2_)
                        {
                           §§push(this.professionIcon);
                           if(_loc2_)
                           {
                              §§pop().dynaBmpSourceName = this._data.specialisationGfxId.toString();
                              if(!_loc3_)
                              {
                                 §§goto(addr0066);
                              }
                              §§goto(addr012d);
                           }
                           addr0066:
                           §§push(this.professionIcon);
                           §§push(LocaUtils);
                           §§push("rcl.professions");
                           §§push("rcl.professions.");
                           if(_loc2_)
                           {
                              §§push(§§pop() + this._data.specialisationLocaId.toString());
                           }
                           §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                           if(_loc2_)
                           {
                              addr0089:
                              §§push(this.nameLabel);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop().text = this._data.name;
                                 if(!_loc3_)
                                 {
                                    §§push(this.countLabel);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§pop().text = this._data.operationsLeft.toString();
                                       if(_loc2_)
                                       {
                                          §§push(this._data);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().operationsLeft);
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§push(0);
                                                if(_loc2_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(this.countLabel);
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr0105);
                                                         }
                                                         else
                                                         {
                                                            addr0131:
                                                            §§push("operationCountLow");
                                                         }
                                                         §§goto(addr0135);
                                                      }
                                                      §§goto(addr0270);
                                                   }
                                                   else
                                                   {
                                                      addEventListener(MouseEvent.CLICK,this.onOperationLowClick);
                                                      if(!_loc3_)
                                                      {
                                                         addr012d:
                                                         §§goto(addr0131);
                                                         §§push(this.countLabel);
                                                      }
                                                   }
                                                   §§goto(addr020a);
                                                }
                                                §§goto(addr01f4);
                                             }
                                             §§goto(addr0211);
                                          }
                                          §§goto(addr020e);
                                       }
                                       §§goto(addr0162);
                                    }
                                    addr0105:
                                    §§push("operationCount");
                                    if(!_loc3_)
                                    {
                                       §§pop().styleName = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr0144:
                                          §§push(false);
                                          if(_loc2_)
                                          {
                                             _loc1_ = §§pop();
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr0162:
                                                §§push(this._data);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(§§pop().requiredDepartment == this._data.department)
                                                   {
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         §§push(this._data);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop().requiredSpecialisationId == this._data.specialisationId);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               var _temp_10:* = §§pop();
                                                               §§push(_temp_10);
                                                               §§push(_temp_10);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr01d4:
                                                                           §§push(this._data);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop().requiredSpecialisationRank);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr01f4:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01fa:
                                                                                       var _temp_14:* = §§pop();
                                                                                       addr01fb:
                                                                                       §§push(_temp_14);
                                                                                       if(!_temp_14)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr0204:
                                                                                             §§pop();
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr0213:
                                                                                                addr0211:
                                                                                                addr020e:
                                                                                                addr020a:
                                                                                                §§push(this._data.specialisationRank == 3);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr0219:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc2_ || _loc3_)
                                                                                                      {
                                                                                                         addr022a:
                                                                                                         §§push(true);
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            addr0238:
                                                                                                            _loc1_ = §§pop();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr023f:
                                                                                                               addr023e:
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  if(_loc2_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr0250:
                                                                                                                     §§push(this.checkMark);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push("checkmark_green_small");
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §§pop().dynaBmpSourceName = §§pop();
                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr0270:
                                                                                                                              §§push(this.nameLabel);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push("specialistNameGreen");
                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§pop().styleName = §§pop();
                                                                                                                                    if(_loc3_ && _loc1_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr02bf:
                                                                                                                                    §§pop().styleName = §§pop();
                                                                                                                                 }
                                                                                                                                 §§goto(addr02c1);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr02bc:
                                                                                                                                 §§push("specialistName");
                                                                                                                              }
                                                                                                                              §§goto(addr02bf);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr02b1:
                                                                                                                           §§pop().dynaBmpSourceName = §§pop();
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr02b8:
                                                                                                                              §§goto(addr02bc);
                                                                                                                              §§push(this.nameLabel);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02c1);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr02ae:
                                                                                                                        §§push("checkmark_grey_small");
                                                                                                                     }
                                                                                                                     §§goto(addr02b1);
                                                                                                                  }
                                                                                                                  §§goto(addr02c1);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.checkMark);
                                                                                                               }
                                                                                                               §§goto(addr02ae);
                                                                                                            }
                                                                                                            §§goto(addr0270);
                                                                                                         }
                                                                                                         §§goto(addr023f);
                                                                                                      }
                                                                                                      §§goto(addr0250);
                                                                                                   }
                                                                                                   §§goto(addr023e);
                                                                                                }
                                                                                                §§goto(addr0238);
                                                                                             }
                                                                                             §§goto(addr0270);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0219);
                                                                                    }
                                                                                    §§goto(addr0204);
                                                                                 }
                                                                                 §§goto(addr0213);
                                                                              }
                                                                              §§goto(addr0211);
                                                                           }
                                                                           §§goto(addr020e);
                                                                        }
                                                                        §§goto(addr02c1);
                                                                     }
                                                                     §§goto(addr0219);
                                                                  }
                                                                  §§goto(addr01fa);
                                                               }
                                                               §§goto(addr01fb);
                                                            }
                                                            §§goto(addr01fa);
                                                         }
                                                         §§goto(addr020e);
                                                      }
                                                      §§goto(addr02b8);
                                                   }
                                                   §§goto(addr023e);
                                                }
                                                §§goto(addr020e);
                                             }
                                             §§goto(addr022a);
                                          }
                                          §§goto(addr01fa);
                                       }
                                       §§goto(addr01d4);
                                    }
                                    else
                                    {
                                       addr0135:
                                       §§pop().styleName = §§pop();
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§goto(addr0144);
                                       }
                                    }
                                    §§goto(addr02c1);
                                 }
                                 §§goto(addr020a);
                              }
                              §§goto(addr02bc);
                           }
                           §§goto(addr02c1);
                        }
                        §§goto(addr023e);
                     }
                     §§goto(addr0089);
                  }
                  addr02c1:
                  return;
               }
               §§goto(addr01fa);
            }
            §§goto(addr01d4);
         }
         §§goto(addr02b8);
      }
      
      public function get selectedItem() : *
      {
         return this._data;
      }
      
      private function onOperationLowClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new Event(ITEM_SELECTED,true));
         }
      }
      
      private function _DataGridItemRenderer_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 99;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.alpha = 0.5;
                        if(!_loc3_)
                        {
                           addr0063:
                           _loc1_.visible = false;
                           if(_loc2_)
                           {
                              addr006c:
                              _loc1_.top = 2;
                              if(!_loc3_)
                              {
                                 _loc1_.bottom = 2;
                                 addr0076:
                                 if(_loc2_ || Boolean(this))
                                 {
                                    _loc1_.horizontalCenter = 0;
                                    if(_loc2_ || _loc3_)
                                    {
                                       _loc1_.mxmlContent = [this._DataGridItemRenderer_BriskImageDynaLib1_c(),this._DataGridItemRenderer_BriskImageDynaLib2_c(),this._DataGridItemRenderer_BriskImageDynaLib3_c()];
                                       if(_loc2_)
                                       {
                                          addr00c3:
                                          _loc1_.id = "_DataGridItemRenderer_HGroup1";
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr00d6:
                                             if(!_loc1_.document)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00f7:
                                                   _loc1_.document = this;
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§goto(addr0108);
                                                   }
                                                }
                                                §§goto(addr0112);
                                             }
                                             §§goto(addr0108);
                                          }
                                          §§goto(addr0112);
                                       }
                                       addr0108:
                                       this._DataGridItemRenderer_HGroup1 = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr0112:
                                          BindingManager.executeBindings(this,"_DataGridItemRenderer_HGroup1",this._DataGridItemRenderer_HGroup1);
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00f7);
                              }
                           }
                        }
                        §§goto(addr00d6);
                     }
                  }
                  §§goto(addr0076);
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr0063);
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr007d);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0048:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0086);
               }
               addr008a:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr0048);
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr0080);
               }
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _DataGridItemRenderer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr002f:
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "left";
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006d:
                        _loc1_.verticalCenter = 0;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._DataGridItemRenderer_HGroup3_c(),this._DataGridItemRenderer_HGroup4_c(),this._DataGridItemRenderer_HGroup5_c()];
                           addr007f:
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00ba:
                                    _loc1_.document = this;
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr00ba);
            }
            §§goto(addr007f);
         }
         §§goto(addr002f);
      }
      
      private function _DataGridItemRenderer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.paddingLeft = 10;
            if(!_loc3_)
            {
               _loc1_.paddingRight = 5;
               if(!_loc3_)
               {
                  addr004a:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "left";
                     if(_loc2_)
                     {
                        addr0060:
                        _loc1_.width = 65;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._DataGridItemRenderer_BriskImageDynaLib4_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr009a:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009a);
                     }
                     addr009e:
                     return _loc1_;
                  }
               }
               §§goto(addr009a);
            }
            §§goto(addr0060);
         }
         §§goto(addr004a);
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "icon_badges";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
               if(_loc3_ || Boolean(this))
               {
                  addr005c:
                  _loc1_.id = "professionIcon";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0099);
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr00a3);
            }
            addr0099:
            this.professionIcon = _loc1_;
            if(!_loc2_)
            {
               addr00a3:
               BindingManager.executeBindings(this,"professionIcon",this.professionIcon);
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _DataGridItemRenderer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.paddingLeft = 10;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.paddingRight = 5;
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.horizontalAlign = "left";
                        if(!_loc2_)
                        {
                           §§goto(addr0086);
                        }
                     }
                     §§goto(addr009c);
                  }
                  addr0086:
                  _loc1_.mxmlContent = [this._DataGridItemRenderer_LocaLabel1_i(),this._DataGridItemRenderer_BriskImageDynaLib5_i()];
                  if(!_loc2_)
                  {
                     addr009c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00b0:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00b4);
               }
               addr00b4:
               return _loc1_;
            }
            §§goto(addr00b0);
         }
         §§goto(addr009c);
      }
      
      private function _DataGridItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.text = "";
                  if(_loc3_)
                  {
                     §§goto(addr0046);
                  }
               }
               §§goto(addr0065);
            }
            §§goto(addr0078);
         }
         addr0046:
         _loc1_.styleName = "specialistName";
         if(!(_loc2_ && _loc2_))
         {
            addr0065:
            _loc1_.id = "nameLabel";
            if(_loc3_ || _loc3_)
            {
               addr0078:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr00a8);
                     }
                  }
                  §§goto(addr00ba);
               }
               addr00a8:
               this.nameLabel = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr00ba:
                  BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
               }
               §§goto(addr00c7);
            }
            §§goto(addr00ba);
         }
         addr00c7:
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "checkmark_green_small";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "checkMark";
                  if(_loc3_ || Boolean(this))
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr0098);
                     }
                     addr0086:
                     this.checkMark = _loc1_;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"checkMark",this.checkMark);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005d);
            }
            §§goto(addr0086);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _DataGridItemRenderer_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0052:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._DataGridItemRenderer_LocaLabel2_i()];
                     §§goto(addr0064);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr009a);
            }
            addr0064:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0086:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr009a:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _DataGridItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_)
            {
               _loc1_.text = "5";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.styleName = "operationCount";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "countLabel";
                     if(_loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009b:
                                 this.countLabel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"countLabel",this.countLabel);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr008a);
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr00a5);
      }
      
      private function _DataGridItemRenderer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0049:
               _loc1_.dynaBmpSourceName = "quest_taskline";
               if(!_loc2_)
               {
                  _loc1_.width = 450;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 0;
                     addr0060:
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0060);
            }
            addr0080:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0094:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get _DataGridItemRenderer_HGroup1() : HGroup
      {
         return this._1273130016_DataGridItemRenderer_HGroup1;
      }
      
      public function set _DataGridItemRenderer_HGroup1(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1273130016_DataGridItemRenderer_HGroup1;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003f:
                  this._1273130016_DataGridItemRenderer_HGroup1 = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DataGridItemRenderer_HGroup1",_loc2_,param1));
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
         §§goto(addr003f);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._398367733checkMark = param1;
                  addr003e:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get countLabel() : LocaLabel
      {
         return this._1053257947countLabel;
      }
      
      public function set countLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1053257947countLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr003e:
                  this._1053257947countLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"countLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005e);
            }
            addr0084:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1215755049nameLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._1215755049nameLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
               }
               §§goto(addr004f);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get professionIcon() : BriskImageDynaLib
      {
         return this._865160299professionIcon;
      }
      
      public function set professionIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._865160299professionIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._865160299professionIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
         }
         addr0075:
      }
   }
}

