package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class TextValueWithImage_GroupComponent extends HGroup
   {
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function TextValueWithImage_GroupComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr001e:
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.gap = 0;
                  if(_loc2_)
                  {
                     addr0056:
                     this.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        this.paddingBottom = 4;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0074:
                           this.mxmlContent = [this._TextValueWithImage_GroupComponent_LocaLabel1_i(),this._TextValueWithImage_GroupComponent_Group1_c()];
                        }
                        return;
                     }
                  }
               }
               §§goto(addr0074);
            }
            §§goto(addr0056);
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0059);
                  }
               }
               else
               {
                  addr0067:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0067);
         }
         addr0059:
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
      
      private function _TextValueWithImage_GroupComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "fontABlack";
            if(!_loc2_)
            {
               _loc1_.text = "+ 1112";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.maxWidth = 55;
                  if(!_loc2_)
                  {
                     _loc1_.minWidth = 55;
                     if(!_loc2_)
                     {
                        _loc1_.setStyle("paddingTop",6);
                        if(!_loc2_)
                        {
                           _loc1_.setStyle("color",5726299);
                           addr006a:
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008b:
                              _loc1_.setStyle("textAlign","right");
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.setStyle("fontSize",13);
                                 if(!_loc2_)
                                 {
                                    addr00b0:
                                    _loc1_.id = "textLabel";
                                    if(_loc3_)
                                    {
                                       addr00bb:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_)
                                          {
                                             addr00c7:
                                             _loc1_.document = this;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr00e3:
                                                this.textLabel = _loc1_;
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr00f5:
                                                   BindingManager.executeBindings(this,"textLabel",this.textLabel);
                                                }
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr00f5);
                                          }
                                          §§goto(addr0102);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00f5);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00b0);
                  }
                  addr0102:
                  return _loc1_;
               }
               §§goto(addr00bb);
            }
            §§goto(addr006a);
         }
         §§goto(addr008b);
      }
      
      private function _TextValueWithImage_GroupComponent_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 32;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr003f);
            }
            §§goto(addr006c);
         }
         addr003f:
         _loc1_.height = 28;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._TextValueWithImage_GroupComponent_BriskImageDynaLib1_i()];
            if(_loc2_)
            {
               addr006c:
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
      
      private function _TextValueWithImage_GroupComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc3_))
            {
               addr0038:
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.dynaLibName = "gui_resources_icons";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006a:
                     _loc1_.dynaBmpSourceName = "dd_button_icon";
                     if(_loc2_ || Boolean(this))
                     {
                        addr007d:
                        _loc1_.id = "visual";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00b1);
                                 }
                              }
                              §§goto(addr00c3);
                           }
                        }
                        addr00b1:
                        this.visual = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00c3:
                           BindingManager.executeBindings(this,"visual",this.visual);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr0090);
                  }
                  addr00d0:
                  return _loc1_;
               }
               §§goto(addr007d);
            }
            §§goto(addr006a);
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1055687225textLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1055687225textLabel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._816216256visual;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._816216256visual = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
   }
}

