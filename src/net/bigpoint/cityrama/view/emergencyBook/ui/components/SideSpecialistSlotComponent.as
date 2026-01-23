package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class SideSpecialistSlotComponent extends Group
   {
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1420004117emptySlot:Group;
      
      private var _76117376filledSlot:Group;
      
      private var _1844466615nameDisplay:LocaLabel;
      
      private var _3387378note:StickyNoteComponent;
      
      private var _1034926718profImage:BriskImageDynaLib;
      
      private var _1042337429requiredLabel:LocaLabel;
      
      private var _339532710serviceImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalSlotVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideSpecialistSlotComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 137;
                  if(_loc2_)
                  {
                     this.mxmlContent = [this._SideSpecialistSlotComponent_Group2_i(),this._SideSpecialistSlotComponent_Group3_i()];
                  }
               }
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0044);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0044:
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
      
      public function set data(param1:ProfessionalSlotVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc2_)
               {
                  this._data = param1 as ProfessionalSlotVo;
                  if(_loc2_ || Boolean(this))
                  {
                     this._dataIsDirty = true;
                     if(!_loc3_)
                     {
                        §§goto(addr0079);
                     }
                  }
                  §§goto(addr008b);
               }
               addr0079:
               invalidateProperties();
               if(!(_loc3_ && Boolean(this)))
               {
                  addr008b:
                  validateNow();
               }
               §§goto(addr0092);
            }
            addr0092:
            return;
         }
         §§goto(addr0079);
      }
      
      public function get professionalId() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._data);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  addr003a:
                  addr0036:
                  §§push(this._data.professionalId);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(_loc1_)
                     {
                     }
                  }
               }
               else
               {
                  return 0;
               }
               return §§pop();
            }
            §§goto(addr003a);
         }
         §§goto(addr0036);
      }
      
      public function enableNameDisplay(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.nameDisplay);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§pop().visible = §§pop();
                  if(_loc3_)
                  {
                     addr0067:
                     this.nameDisplay.includeInLayout = param1;
                     addr0066:
                     if(!_loc2_)
                     {
                        addr006e:
                        §§push(this.note);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§pop().visible = §§pop();
                              if(!_loc2_)
                              {
                                 addr0089:
                                 this.note.includeInLayout = param1;
                                 addr0088:
                              }
                              §§goto(addr008b);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr0088);
                     }
                  }
                  addr008b:
                  return;
               }
               §§goto(addr0067);
            }
            §§goto(addr0066);
         }
         §§goto(addr006e);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            super.commitProperties();
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(this._dataIsDirty);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        this._dataIsDirty = false;
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           this.emptySlot.visible = this.emptySlot.includeInLayout = this._data.empty;
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              this.filledSlot.visible = this.filledSlot.includeInLayout = !this._data.empty;
                              if(_loc5_)
                              {
                                 addr00b6:
                                 addr00bd:
                                 if(this._data.empty)
                                 {
                                    if(!(_loc6_ && Boolean(_loc1_)))
                                    {
                                       addr00cf:
                                       this.serviceImage.dynaBmpSourceName = this._data.reqSpecialisationGfxId.toString();
                                       if(_loc5_)
                                       {
                                          addr00e6:
                                          §§push(ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGrade")));
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc1_ = §§pop();
                                       }
                                       §§push(this._data.reqDepartment);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          while(true)
                                          {
                                             var _loc4_:* = §§pop();
                                             if(!(_loc6_ && Boolean(_loc1_)))
                                             {
                                                §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(0);
                                                            if(_loc6_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr028f:
                                                            §§push(1);
                                                            if(_loc6_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerTagConstants.HOSPITAL);
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     §§goto(addr028f);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr02a6:
                                                                     §§push(2);
                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr02c6);
                                                               }
                                                               addr02a2:
                                                               addr02a0:
                                                               if(ServerTagConstants.POLICE_DEPARTMENT === _loc4_)
                                                               {
                                                                  §§goto(addr02a6);
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                               }
                                                               addr02c6:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §§push(ResourceManager.getInstance());
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameFirefighting")));
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                              }
                                                                              addr02e7:
                                                                              §§push(_loc1_);
                                                                              if(_loc5_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§push("{0}");
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().replace(§§pop(),_loc2_));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       _loc1_ = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(_loc5_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr0324:
                                                                                             addr0321:
                                                                                             §§push(§§pop().replace("{1}",this._data.reqSpecialisationrank.toString()));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr033b:
                                                                                                _loc1_ = §§pop();
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   this.requiredLabel.text = _loc1_;
                                                                                                   if(_loc5_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr0390:
                                                                                                   addr039b:
                                                                                                   addr0398:
                                                                                                   addr0394:
                                                                                                   this.profImage.dynaBmpSourceName = this._data.profImage;
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr03a3:
                                                                                                      this.nameDisplay.text = this._data.name;
                                                                                                      if(_loc6_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr03be:
                                                                                                      §§push(this.badgeImage);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§pop().dynaBmpSourceName = this._data.profSpecialisationGfxId.toString();
                                                                                                         if(_loc5_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                            addr03e3:
                                                                                                            addr03e9:
                                                                                                            §§push(ResourceManager.getInstance());
                                                                                                            §§push("rcl.professions");
                                                                                                            if(_loc5_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§push("");
                                                                                                               if(!(_loc6_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  addr040b:
                                                                                                                  addr042b:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  §§push("rcl.professions.");
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr0414:
                                                                                                                     §§push(§§pop() + this._data.profSpecialisationLocaId.toString());
                                                                                                                  }
                                                                                                                  §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr042a:
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr043f:
                                                                                                                  addr0443:
                                                                                                                  §§push(this.badgeImage);
                                                                                                                  §§push(StringUtil);
                                                                                                                  §§push(ResourceManager.getInstance());
                                                                                                                  §§push("rcl.tooltips.departmentBook");
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push("");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr045e:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        §§push("rcl.tooltips.departmentBook.specialization");
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr0467:
                                                                                                                           §§push(§§pop() + "");
                                                                                                                        }
                                                                                                                        §§pop().toolTip = §§pop().substitute(§§pop().getString(§§pop(),§§pop()),_loc3_);
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr0467);
                                                                                                                  }
                                                                                                                  §§goto(addr045e);
                                                                                                               }
                                                                                                               §§goto(addr0414);
                                                                                                            }
                                                                                                            §§goto(addr040b);
                                                                                                         }
                                                                                                         §§goto(addr043f);
                                                                                                      }
                                                                                                      §§goto(addr0443);
                                                                                                   }
                                                                                                   §§goto(addr03e3);
                                                                                                }
                                                                                                §§goto(addr03be);
                                                                                             }
                                                                                             §§goto(addr042b);
                                                                                          }
                                                                                          §§goto(addr042a);
                                                                                       }
                                                                                       §§goto(addr043f);
                                                                                    }
                                                                                    §§goto(addr042b);
                                                                                 }
                                                                                 §§goto(addr0324);
                                                                              }
                                                                           }
                                                                           §§goto(addr0321);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0187:
                                                                           §§push(§§pop());
                                                                           if(!(_loc6_ && Boolean(_loc2_)))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr02e7);
                                                                              }
                                                                              §§goto(addr043f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01d1:
                                                                              §§push(§§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc6_ && Boolean(_loc1_))
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr02e7);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr033b);
                                                                     }
                                                                     §§goto(addr03e9);
                                                                  case 1:
                                                                     §§push(ResourceManager.getInstance());
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameMedical")));
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr0187);
                                                                        }
                                                                        §§goto(addr042a);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01b6:
                                                                        §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.requiredGradeNameCrime")));
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr01d1);
                                                                  case 2:
                                                                     §§push(ResourceManager.getInstance());
                                                                     if(!(_loc6_ && Boolean(_loc1_)))
                                                                     {
                                                                        §§goto(addr01b6);
                                                                     }
                                                                     §§goto(addr03e9);
                                                                  default:
                                                                     §§goto(addr02e7);
                                                               }
                                                               addr0475:
                                                               return;
                                                               §§goto(addr02a6);
                                                            }
                                                            §§goto(addr02a2);
                                                         }
                                                         §§goto(addr02a0);
                                                      }
                                                      §§goto(addr02c6);
                                                   }
                                                   §§goto(addr02a2);
                                                }
                                                §§goto(addr02a0);
                                             }
                                             §§goto(addr028f);
                                          }
                                       }
                                       §§goto(addr042b);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 else
                                 {
                                    §§push(this.profImage);
                                    if(_loc5_ || Boolean(_loc1_))
                                    {
                                       §§push(this._data);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().profLib);
                                          if(_loc5_)
                                          {
                                             §§pop().dynaLibName = §§pop();
                                             if(_loc5_)
                                             {
                                                §§goto(addr0390);
                                             }
                                             §§goto(addr03a3);
                                          }
                                          §§goto(addr039b);
                                       }
                                       §§goto(addr0398);
                                    }
                                 }
                                 §§goto(addr0394);
                              }
                           }
                           §§goto(addr00cf);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0475);
               }
               §§goto(addr00bd);
            }
         }
         §§goto(addr00e6);
      }
      
      private function _SideSpecialistSlotComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_VGroup1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "emptySlot";
                     if(!_loc2_)
                     {
                        §§goto(addr006a);
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr00a3);
            }
            addr006a:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0076:
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0091);
                  }
               }
               §§goto(addr00a3);
            }
            addr0091:
            this.emptySlot = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr00a3:
               BindingManager.executeBindings(this,"emptySlot",this.emptySlot);
            }
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      private function _SideSpecialistSlotComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.gap = -5;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_StickyNoteComponent1_c()];
                     §§goto(addr0061);
                  }
                  §§goto(addr009a);
               }
            }
         }
         addr0061:
         if(!(_loc3_ && _loc2_))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr009a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.tapeTop = true;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.height = 140;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SideSpecialistSlotComponent_Array4_c);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr009a);
               }
            }
            addr008e:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr009a:
                  _loc1_.document = this;
               }
            }
            §§goto(addr009e);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Array4_c() : Array
      {
         return [this._SideSpecialistSlotComponent_VGroup2_c()];
      }
      
      private function _SideSpecialistSlotComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     addr0055:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr005f:
                        _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_BriskImageDynaLib1_i(),this._SideSpecialistSlotComponent_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                     }
                     §§goto(addr0081);
                  }
                  addr0075:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0081:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0055);
            }
            §§goto(addr005f);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "big_badges";
            if(!_loc3_)
            {
               addr002c:
               _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
               if(!_loc3_)
               {
                  _loc1_.id = "serviceImage";
                  if(_loc2_)
                  {
                     addr0050:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0079:
                              this.serviceImage = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr008b:
                                 BindingManager.executeBindings(this,"serviceImage",this.serviceImage);
                              }
                              §§goto(addr0098);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0079);
                  }
                  addr0098:
                  return _loc1_;
               }
               §§goto(addr0050);
            }
            §§goto(addr0079);
         }
         §§goto(addr002c);
      }
      
      private function _SideSpecialistSlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr002a:
               _loc1_.maxDisplayedLines = 3;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "requiredSpecialistSlot";
                  if(_loc3_)
                  {
                     _loc1_.text = "DEV: Required Firefighter level 3";
                     if(_loc3_)
                     {
                        _loc1_.id = "requiredLabel";
                        if(_loc3_)
                        {
                           addr006b:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr0095:
                                    this.requiredLabel = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"requiredLabel",this.requiredLabel);
                                    }
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr006b);
                  }
                  addr00b4:
                  return _loc1_;
               }
               §§goto(addr006b);
            }
            §§goto(addr0095);
         }
         §§goto(addr002a);
      }
      
      private function _SideSpecialistSlotComponent_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_StickyNoteComponent2_i(),this._SideSpecialistSlotComponent_Group4_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "filledSlot";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0093:
                                 this.filledSlot = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"filledSlot",this.filledSlot);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00a5);
                           }
                           addr00b2:
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                  }
               }
               §§goto(addr00a5);
            }
            §§goto(addr006b);
         }
         §§goto(addr00a5);
      }
      
      private function _SideSpecialistSlotComponent_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 93;
            if(!_loc2_)
            {
               _loc1_.height = 60;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 100;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SideSpecialistSlotComponent_Array7_c);
                        if(!_loc2_)
                        {
                           _loc1_.id = "note";
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008f:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr009b:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00a4);
                                    }
                                    §§goto(addr00ae);
                                 }
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr008f);
               }
               addr00a4:
               this.note = _loc1_;
               if(_loc3_)
               {
                  addr00ae:
                  BindingManager.executeBindings(this,"note",this.note);
               }
               §§goto(addr00bb);
            }
            §§goto(addr00ae);
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_Array7_c() : Array
      {
         return [this._SideSpecialistSlotComponent_LocaLabel2_i()];
      }
      
      private function _SideSpecialistSlotComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.styleName = "specialistSlotName";
                     if(_loc3_)
                     {
                        _loc1_.id = "nameDisplay";
                        if(_loc3_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a3:
                                    this.nameDisplay = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b5:
                                       BindingManager.executeBindings(this,"nameDisplay",this.nameDisplay);
                                    }
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr00b5);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      private function _SideSpecialistSlotComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 121;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 120;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._SideSpecialistSlotComponent_BriskImageDynaLib2_i(),this._SideSpecialistSlotComponent_BriskImageDynaLib3_i()];
                     §§goto(addr0069);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0091);
            }
         }
         addr0069:
         if(!(_loc3_ && _loc3_))
         {
            addr0091:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr00a5:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr004a:
                  _loc1_.dynaBmpSourceName = "polaroid_friend";
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr008a);
               }
               addr0055:
               _loc1_.id = "profImage";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0075:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr0094);
                  }
                  addr008a:
                  this.profImage = _loc1_;
                  if(_loc3_)
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"profImage",this.profImage);
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr004a);
      }
      
      private function _SideSpecialistSlotComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "diagonal_badges";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  _loc1_.left = -20;
                  if(!_loc2_)
                  {
                     _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                     if(!_loc2_)
                     {
                        addr005f:
                        _loc1_.dynaBmpSourceName = "";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0071:
                           _loc1_.id = "badgeImage";
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr00a3);
                        }
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a3:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00be);
                           }
                        }
                        addr00b4:
                        this.badgeImage = _loc1_;
                        if(_loc3_)
                        {
                           addr00be:
                           BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                        }
                        §§goto(addr00cb);
                     }
                  }
                  §§goto(addr0071);
               }
               addr00cb:
               return _loc1_;
            }
            §§goto(addr00a3);
         }
         §§goto(addr005f);
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
               if(_loc4_)
               {
                  this._1060367224badgeImage = param1;
                  addr0035:
                  if(!_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004d);
            }
            addr0074:
            return;
         }
         §§goto(addr0035);
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlot() : Group
      {
         return this._1420004117emptySlot;
      }
      
      public function set emptySlot(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1420004117emptySlot;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1420004117emptySlot = param1;
                  addr003f:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlot",_loc2_,param1));
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
         §§goto(addr003f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._76117376filledSlot = param1;
                  addr0037:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filledSlot",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameDisplay() : LocaLabel
      {
         return this._1844466615nameDisplay;
      }
      
      public function set nameDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844466615nameDisplay;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr004c:
                  this._1844466615nameDisplay = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get note() : StickyNoteComponent
      {
         return this._3387378note;
      }
      
      public function set note(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3387378note;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._3387378note = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"note",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1034926718profImage = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredLabel() : LocaLabel
      {
         return this._1042337429requiredLabel;
      }
      
      public function set requiredLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1042337429requiredLabel;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1042337429requiredLabel = param1;
                  if(!_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0061);
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get serviceImage() : BriskImageDynaLib
      {
         return this._339532710serviceImage;
      }
      
      public function set serviceImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._339532710serviceImage;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._339532710serviceImage = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0080);
               }
               addr0069:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0080:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serviceImage",_loc2_,param1));
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return;
         }
         §§goto(addr0069);
      }
   }
}

