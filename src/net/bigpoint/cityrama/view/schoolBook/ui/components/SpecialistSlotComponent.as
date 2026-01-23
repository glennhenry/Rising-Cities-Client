package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class SpecialistSlotComponent extends Group
   {
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistSlotComponent()
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
               if(!_loc1_)
               {
                  addr003a:
                  this.width = 137;
                  if(_loc2_ || Boolean(this))
                  {
                     this.mxmlContent = [this._SpecialistSlotComponent_Group2_i()];
                  }
               }
               return;
            }
         }
         §§goto(addr003a);
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
               §§goto(addr002e);
            }
            §§goto(addr0044);
         }
         addr002e:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr0044:
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
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:IProfessionalSlotVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._data = param1 as IProfessionalSlotVo;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0062:
                     this._dataIsDirty = true;
                     if(_loc3_)
                     {
                        addr006c:
                        invalidateProperties();
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr006c);
               }
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = null;
         if(_loc4_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc4_)
            {
               if(this._dataIsDirty)
               {
                  if(!_loc3_)
                  {
                     addr003e:
                     this._dataIsDirty = false;
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(this.profImage);
                        if(!_loc3_)
                        {
                           §§push(this._data);
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(§§pop().profLib);
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().dynaLibName = §§pop();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0099:
                                    this.profImage.dynaBmpSourceName = this._data.profImage;
                                    addr0095:
                                    addr0091:
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00a8:
                                       this.nameDisplay.text = this._data.name;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr00c4:
                                          if(this._data.profSpecialisationGfxId)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(ResourceManager.getInstance());
                                                §§push("rcl.professions");
                                                if(!_loc3_)
                                                {
                                                   §§push("");
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr00f3:
                                                      §§push(§§pop() + §§pop());
                                                      §§push("rcl.professions.");
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + this._data.profSpecialisationLocaId.toString());
                                                      }
                                                   }
                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc1_ = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.badgeImage);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(LocaUtils);
                                                         §§push("rcl.tooltips.departmentBook");
                                                         if(!_loc3_)
                                                         {
                                                            §§push("");
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr015a:
                                                               §§push(§§pop() + §§pop());
                                                               §§push("rcl.tooltips.departmentBook.specialization");
                                                               if(!_loc3_)
                                                               {
                                                                  addr0162:
                                                                  §§push(§§pop() + "");
                                                               }
                                                               §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),[_loc1_]);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.badgeImage);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        addr0197:
                                                                        §§push(this.badgeImage);
                                                                        if(_loc4_ || Boolean(_loc1_))
                                                                        {
                                                                           addr01a9:
                                                                           §§push(this.badgeImage);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(true);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 var _temp_15:* = §§pop();
                                                                                 §§push(_temp_15);
                                                                                 §§push(_temp_15);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    var _loc2_:* = §§pop();
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§pop().visible = §§pop();
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop().includeInLayout = §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0219:
                                                                                                §§pop().includeInLayout = §§pop();
                                                                                             }
                                                                                             §§goto(addr021b);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0217:
                                                                                          }
                                                                                          §§goto(addr0219);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0216:
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                       §§goto(addr0217);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0214:
                                                                                       §§pop().visible = §§pop();
                                                                                    }
                                                                                    §§goto(addr0216);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0213:
                                                                                    _loc2_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0214);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0212:
                                                                                 var _temp_19:* = §§pop();
                                                                                 §§push(_temp_19);
                                                                                 §§push(_temp_19);
                                                                              }
                                                                              §§goto(addr0213);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0211:
                                                                              §§push(false);
                                                                           }
                                                                           §§goto(addr0212);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr020d:
                                                                           §§push(this.badgeImage);
                                                                        }
                                                                        §§goto(addr0211);
                                                                     }
                                                                     §§goto(addr021b);
                                                                  }
                                                                  §§goto(addr020d);
                                                               }
                                                               §§goto(addr0197);
                                                            }
                                                            §§goto(addr0162);
                                                         }
                                                         §§goto(addr015a);
                                                      }
                                                      §§goto(addr01a9);
                                                   }
                                                   §§goto(addr021b);
                                                }
                                                §§goto(addr00f3);
                                             }
                                             §§goto(addr021b);
                                          }
                                          else
                                          {
                                             §§push(this.badgeImage);
                                          }
                                          §§goto(addr020d);
                                       }
                                       §§goto(addr0197);
                                    }
                                    §§goto(addr00c4);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr021b);
            }
            §§goto(addr003e);
         }
         addr021b:
      }
      
      private function _SpecialistSlotComponent_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._SpecialistSlotComponent_StickyNoteComponent1_c(),this._SpecialistSlotComponent_BriskImageDynaLib1_i(),this._SpecialistSlotComponent_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006b:
                     _loc1_.id = "filledSlot";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr008d);
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr00a0);
                  }
                  addr008d:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0096:
                     this.filledSlot = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0096);
      }
      
      private function _SpecialistSlotComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 93;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 60;
               if(_loc2_)
               {
                  _loc1_.top = 100;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SpecialistSlotComponent_Array3_c);
                        if(!_loc3_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr008f);
                     }
                  }
               }
               addr007b:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr008f:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr008f);
      }
      
      private function _SpecialistSlotComponent_Array3_c() : Array
      {
         return [this._SpecialistSlotComponent_LocaLabel1_i()];
      }
      
      private function _SpecialistSlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "specialistSlotName";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "nameDisplay";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00ad);
               }
               addr008e:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr009a:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr00ad);
               }
               addr00a3:
               this.nameDisplay = _loc1_;
               if(!_loc2_)
               {
                  addr00ad:
                  BindingManager.executeBindings(this,"nameDisplay",this.nameDisplay);
               }
               §§goto(addr00ba);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr008e);
      }
      
      private function _SpecialistSlotComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "profImage";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr005e:
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr006f);
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr005e);
            }
            addr006f:
            this.profImage = _loc1_;
            if(!_loc3_)
            {
               addr0079:
               BindingManager.executeBindings(this,"profImage",this.profImage);
            }
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _SpecialistSlotComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "diagonal_badges";
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  _loc1_.left = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0063:
                     _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                     if(!_loc2_)
                     {
                        addr006f:
                        _loc1_.id = "badgeImage";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00a3:
                                    this.badgeImage = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00ad);
                     }
                  }
                  addr00ba:
                  return _loc1_;
               }
            }
            §§goto(addr0063);
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1060367224badgeImage;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1060367224badgeImage = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get filledSlot() : Group
      {
         return this._76117376filledSlot;
      }
      
      public function set filledSlot(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._76117376filledSlot;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._76117376filledSlot = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filledSlot",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get nameDisplay() : LocaLabel
      {
         return this._1844466615nameDisplay;
      }
      
      public function set nameDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844466615nameDisplay;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003e:
                  this._1844466615nameDisplay = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameDisplay",_loc2_,param1));
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
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get profImage() : BriskImageDynaLib
      {
         return this._1034926718profImage;
      }
      
      public function set profImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1034926718profImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1034926718profImage = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
      }
   }
}

