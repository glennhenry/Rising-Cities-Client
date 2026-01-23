package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DepartmentListItemRenderer extends ItemRenderer
   {
      
      private var _93494179badge:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _department:String;
      
      public function DepartmentListItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               addr0037:
               if(!(_loc2_ && Boolean(this)))
               {
                  this.width = 30;
                  if(_loc1_)
                  {
                     addr0065:
                     this.mxmlContent = [this._DepartmentListItemRenderer_HGroup1_c()];
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0065);
            }
            addr0070:
            return;
         }
         §§goto(addr0037);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0056);
                  }
               }
               else
               {
                  addr0064:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0056:
            return;
         }
         §§goto(addr0064);
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
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.data = param1;
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1 is String);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr005d:
                        if(!RandomUtilities.isEqual(param1,this._department))
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0079:
                              this._isDirty = true;
                              if(!_loc2_)
                              {
                                 §§goto(addr0083);
                              }
                              §§goto(addr0098);
                           }
                           addr0083:
                           this._department = param1 as String;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0098:
                              invalidateProperties();
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0098);
                  }
                  addr009d:
                  return;
               }
               §§goto(addr005d);
            }
            §§goto(addr0083);
         }
         §§goto(addr0079);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               §§push(this._department);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!_loc1_)
                        {
                           §§pop();
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr0059);
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr0058);
                     }
                     addr0059:
                     §§push(this._isDirty);
                     if(_loc2_ || _loc1_)
                     {
                        addr0058:
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           this._isDirty = false;
                           if(_loc2_ || _loc1_)
                           {
                              addr0074:
                              §§push(this.badge);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push("gui_infield_gui_infolayer");
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(this._department);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                          if(!_loc1_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc1_)
                                                {
                                                   addr00d2:
                                                   §§push(this.badge);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§push("badge_fire");
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                            addr0171:
                                                            this.badge.dynaBmpSourceName = "badge_hospital";
                                                            addr016a:
                                                            addr016e:
                                                         }
                                                         §§goto(addr0173);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr014d);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0145:
                                                      §§push("badge_police");
                                                      if(!_loc1_)
                                                      {
                                                         addr014d:
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr016a);
                                                         }
                                                         §§goto(addr0173);
                                                      }
                                                   }
                                                   §§goto(addr0171);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this._department);
                                                if(_loc2_)
                                                {
                                                   §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr012a:
                                                            §§push(this.badge);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§goto(addr0145);
                                                            }
                                                            §§goto(addr016e);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0161:
                                                         addr015c:
                                                         if(this._department == ServerTagConstants.HOSPITAL)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               §§goto(addr016a);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr0173);
                                                   }
                                                   §§goto(addr0161);
                                                }
                                                §§goto(addr015c);
                                             }
                                             §§goto(addr0173);
                                          }
                                          §§goto(addr0161);
                                       }
                                       §§goto(addr015c);
                                    }
                                    §§goto(addr0173);
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr016e);
                           }
                           §§goto(addr0173);
                        }
                        §§goto(addr0074);
                     }
                     addr0173:
                     return;
                  }
                  §§goto(addr0058);
               }
               §§goto(addr015c);
            }
            §§goto(addr00d2);
         }
         §§goto(addr0074);
      }
      
      private function _DepartmentListItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = null;
         _loc1_ = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr004a);
            }
            §§goto(addr008c);
         }
         addr004a:
         _loc1_.horizontalAlign = "center";
         if(_loc3_)
         {
            _loc1_.width = 30;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._DepartmentListItemRenderer_BriskImageDynaLib1_i()];
               if(_loc3_ || _loc2_)
               {
                  addr008c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0098:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr0098);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _DepartmentListItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "batch_mini_fire";
               if(!_loc2_)
               {
                  _loc1_.id = "badge";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0086:
                              this.badge = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"badge",this.badge);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0090);
         }
         addr009d:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get badge() : BriskImageDynaLib
      {
         return this._93494179badge;
      }
      
      public function set badge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._93494179badge;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003a:
                  this._93494179badge = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badge",_loc2_,param1));
                        }
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0054);
               }
            }
            addr0063:
            return;
         }
         §§goto(addr003a);
      }
   }
}

