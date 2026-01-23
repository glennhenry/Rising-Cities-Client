package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CategoryMenuListItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _908477250_CategoryMenuListItemRenderer_BlueBarComponent1:BlueBarComponent;
      
      private var _425901719categoryIcon:BriskImageDynaLib;
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CategoryMenuListVo;
      
      private var _isDirty:Boolean;
      
      private var _currentState:String;
      
      public function CategoryMenuListItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  §§goto(addr0038);
               }
               §§goto(addr009c);
            }
            §§goto(addr005e);
         }
         addr0038:
         this.autoDrawBackground = false;
         if(!_loc1_)
         {
            this.percentWidth = 100;
            if(!(_loc1_ && _loc2_))
            {
               this.percentHeight = 100;
               if(_loc2_)
               {
                  addr005e:
                  this.mxmlContent = [this._CategoryMenuListItemRenderer_VGroup1_c()];
                  if(_loc2_)
                  {
                     this.currentState = "normal";
                     if(_loc2_)
                     {
                        this.addEventListener("rollOver",this.___CategoryMenuListItemRenderer_ItemRenderer1_rollOver);
                        if(_loc2_)
                        {
                           addr008b:
                           this.addEventListener("rollOut",this.___CategoryMenuListItemRenderer_ItemRenderer1_rollOut);
                           if(!_loc1_)
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
                                    "name":"visible",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"categoryLabel",
                                    "name":"styleName",
                                    "value":"professionalCharacteristicsLabel"
                                 })]
                              }),new State({
                                 "name":"selected",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"categoryLabel",
                                    "name":"styleName",
                                    "value":"departmentSecurityLabel"
                                 })]
                              }),new State({
                                 "name":"overAndSelected",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"categoryLabel",
                                    "name":"styleName",
                                    "value":"departmentSecurityLabel"
                                 })]
                              }),new State({
                                 "name":"over",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
                                    "name":"visible",
                                    "value":true
                                 }),new SetProperty().initializeFromObject({
                                    "target":"categoryLabel",
                                    "name":"styleName",
                                    "value":"departmentSecurityLabel"
                                 })]
                              }),new State({
                                 "name":"inactive",
                                 "overrides":[new SetProperty().initializeFromObject({
                                    "target":"_CategoryMenuListItemRenderer_BlueBarComponent1",
                                    "name":"visible",
                                    "value":false
                                 }),new SetProperty().initializeFromObject({
                                    "target":"categoryLabel",
                                    "name":"styleName",
                                    "value":"disabledLabel"
                                 })]
                              })];
                              addr009c:
                           }
                        }
                        §§goto(addr01fc);
                     }
                  }
               }
            }
            §§goto(addr008b);
         }
         addr01fc:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               addr003a:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr003a);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._isDirty);
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr006a:
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr0070);
                                 }
                                 §§goto(addr00ec);
                              }
                              addr0070:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr0079:
                                    this._isDirty = false;
                                    if(!_loc2_)
                                    {
                                       this.mouseEnabled = this.mouseChildren = true;
                                       if(!_loc2_)
                                       {
                                          this.categoryLabel.text = this._data.categoryName;
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00bd:
                                             §§push(this.categoryIcon);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§pop().briskDynaVo = this._data.categoryIcon;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr00e5);
                                                }
                                                §§goto(addr014c);
                                             }
                                             §§goto(addr0150);
                                          }
                                          §§goto(addr00fd);
                                       }
                                       §§goto(addr00bd);
                                    }
                                    §§goto(addr014c);
                                 }
                                 addr00e5:
                                 addr00ec:
                                 addr00e9:
                                 if(this._data.disabled)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00fd:
                                       this.mouseEnabled = this.mouseChildren = false;
                                       if(!_loc2_)
                                       {
                                          §§push(this.categoryIcon);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push("gui_popups_goodRebuyPopup");
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§pop().dynaLibName = §§pop();
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr0154:
                                                   this.categoryIcon.dynaBmpSourceName = "locked_category_icon";
                                                   addr0150:
                                                   addr014c:
                                                }
                                                §§goto(addr0156);
                                             }
                                             §§goto(addr0154);
                                          }
                                          §§goto(addr0150);
                                       }
                                       §§goto(addr0156);
                                    }
                                    §§goto(addr014c);
                                 }
                              }
                              §§goto(addr0156);
                           }
                           addr0156:
                           return;
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00e9);
            }
            §§goto(addr014c);
         }
         §§goto(addr0079);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.data = param1;
            if(_loc3_ || _loc3_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     this._data = param1 as CategoryMenuListVo;
                     if(_loc3_ || Boolean(param1))
                     {
                        addr0076:
                        this._isDirty = true;
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr0093);
                     }
                     addr0088:
                     this.determineCurrentState();
                     if(_loc3_)
                     {
                        addr0093:
                        invalidateProperties();
                     }
                     §§goto(addr0098);
                  }
               }
               addr0098:
               return;
            }
            §§goto(addr0088);
         }
         §§goto(addr0076);
      }
      
      private function determineCurrentState() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._data);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr003e:
                     if(this._data.disabled)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           this.setCurrentState("inactive");
                           addr0052:
                           if(!(_loc2_ || _loc2_))
                           {
                              addr0081:
                              this.setCurrentState("normal");
                              if(_loc2_)
                              {
                              }
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0081);
                     }
                     else if(!selected)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0081);
                        }
                     }
                     else
                     {
                        this.setCurrentState("selected");
                     }
                  }
               }
               addr009a:
               return;
            }
            §§goto(addr003e);
         }
         §§goto(addr0052);
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this._currentState);
            if(!_loc3_)
            {
               §§push("inactive");
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!_loc3_)
                     {
                        if(param1)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.getCurrentRendererState());
                              if(!_loc3_)
                              {
                                 §§push("over");
                                 if(!(_loc3_ && param1))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr006f:
                                          this._currentState = "overAndSelected";
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr011f:
                                             super.selected = param1;
                                          }
                                          §§goto(addr0124);
                                       }
                                       else
                                       {
                                          addr00bd:
                                          this._currentState = "selected";
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.getCurrentRendererState());
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00a4:
                                          §§push("normal");
                                          if(!_loc3_)
                                          {
                                             addr00ac:
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§goto(addr00bd);
                                                }
                                                §§goto(addr0124);
                                             }
                                          }
                                          else
                                          {
                                             addr00d5:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   this._currentState = "over";
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this._currentState = "normal";
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                          }
                                          §§goto(addr011f);
                                       }
                                       else
                                       {
                                          addr00d2:
                                          §§push("overAndSelected");
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr011f);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr011f);
                        }
                        else
                        {
                           §§push(this.getCurrentRendererState());
                        }
                        §§goto(addr00d2);
                     }
                  }
                  else
                  {
                     this._currentState = "overAndSelected";
                     if(_loc2_)
                     {
                        §§goto(addr011f);
                     }
                  }
                  addr0124:
                  return;
               }
               §§goto(addr00ac);
            }
            §§goto(addr00a4);
         }
         §§goto(addr006f);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            this._currentState = param1;
            if(_loc4_)
            {
               super.setCurrentState(param1,param2);
            }
         }
      }
      
      override protected function getCurrentRendererState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._currentState);
            if(!_loc1_)
            {
               if(§§pop() != "")
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0048:
                     return this._currentState;
                     addr0044:
                  }
               }
               return super.getCurrentRendererState();
            }
            §§goto(addr0048);
         }
         §§goto(addr0044);
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setCurrentState("over",false);
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!selected)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0043:
                  this.setCurrentState("normal",false);
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function _CategoryMenuListItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.gap = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.paddingRight = 2;
                  if(!_loc3_)
                  {
                     _loc1_.paddingLeft = 0;
                     if(_loc2_)
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_Group1_c(),this._CategoryMenuListItemRenderer_BriskImageDynaLib2_c()];
                        if(!_loc3_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0090);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr007a);
            }
            §§goto(addr009c);
         }
         §§goto(addr0090);
      }
      
      private function _CategoryMenuListItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_BlueBarComponent1_i(),this._CategoryMenuListItemRenderer_HGroup1_c()];
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0080);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0080);
            }
            §§goto(addr0094);
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0094:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_BlueBarComponent1_i() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr002e:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "_CategoryMenuListItemRenderer_BlueBarComponent1";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0064);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0092);
               }
               addr0064:
               _loc1_.document = this;
               if(_loc3_ || _loc3_)
               {
                  addr0080:
                  this._CategoryMenuListItemRenderer_BlueBarComponent1 = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr0092:
                     BindingManager.executeBindings(this,"_CategoryMenuListItemRenderer_BlueBarComponent1",this._CategoryMenuListItemRenderer_BlueBarComponent1);
                  }
               }
               §§goto(addr009f);
            }
            addr009f:
            return _loc1_;
         }
         §§goto(addr002e);
      }
      
      private function _CategoryMenuListItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               addr0031:
               _loc1_.horizontalAlign = "left";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr008c);
            }
            addr0052:
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_HGroup2_c(),this._CategoryMenuListItemRenderer_LocaLabel1_i()];
               addr0064:
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr008c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr00a0:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00a0);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _CategoryMenuListItemRenderer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 32;
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.maxWidth = 32;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.height = 27;
                        if(!_loc2_)
                        {
                           addr006f:
                           _loc1_.maxHeight = 27;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._CategoryMenuListItemRenderer_BriskImageDynaLib1_i()];
                              if(_loc3_ || _loc3_)
                              {
                                 addr009e:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00aa:
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
                  §§goto(addr009e);
               }
               §§goto(addr0052);
            }
            §§goto(addr006f);
         }
         §§goto(addr009e);
      }
      
      private function _CategoryMenuListItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_)
            {
               _loc1_.id = "categoryIcon";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0075);
            }
            addr0062:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr006b:
               this.categoryIcon = _loc1_;
               if(!_loc2_)
               {
                  addr0075:
                  BindingManager.executeBindings(this,"categoryIcon",this.categoryIcon);
               }
            }
            §§goto(addr0082);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _CategoryMenuListItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.minWidth = 1;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("lineBreak","toFit");
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "categoryLabel";
                        if(!_loc2_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0086:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00a3);
                                 }
                              }
                              §§goto(addr00b5);
                           }
                        }
                        addr00a3:
                        this.categoryLabel = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00b5:
                           BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
                        }
                        §§goto(addr00c2);
                     }
                     addr00c2:
                     return _loc1_;
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0086);
            }
            §§goto(addr007a);
         }
         §§goto(addr0086);
      }
      
      private function _CategoryMenuListItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "scalable_greyline";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  addr004d:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006c:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
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
            §§goto(addr004d);
         }
         §§goto(addr006c);
      }
      
      public function ___CategoryMenuListItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___CategoryMenuListItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.rollOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CategoryMenuListItemRenderer_BlueBarComponent1() : BlueBarComponent
      {
         return this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1;
      }
      
      public function set _CategoryMenuListItemRenderer_BlueBarComponent1(param1:BlueBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._908477250_CategoryMenuListItemRenderer_BlueBarComponent1 = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr006a);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CategoryMenuListItemRenderer_BlueBarComponent1",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryIcon() : BriskImageDynaLib
      {
         return this._425901719categoryIcon;
      }
      
      public function set categoryIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._425901719categoryIcon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._425901719categoryIcon = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryIcon",_loc2_,param1));
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
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._320749718categoryLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._320749718categoryLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
   }
}

