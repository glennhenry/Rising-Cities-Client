package net.bigpoint.cityrama.model.departmentBook
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.friends.*;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class DepartmentSideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "DepartmentSideMenuProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "DepartmentSideMenuProxy";
      }
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _currentType:String;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function DepartmentSideMenuProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super(NAME,new ArrayList());
            if(!_loc2_)
            {
               this._fld = FileRuntimeLoadServiceDynamic.getInstance();
               if(!_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0079);
            }
         }
         addr0051:
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!(_loc2_ && _loc1_))
         {
            this._entriesAvailable = false;
            if(_loc1_)
            {
               addr0079:
               this.loadAssets();
            }
         }
      }
      
      private function loadAssets() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Array = ["gui_popups_emergencyBook","gui_popups_paperPopup"];
         var _loc2_:String = "sideMenueDepartmentBookNotification";
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            this._fld = FileRuntimeLoadServiceDynamic.getInstance();
            if(!_loc3_)
            {
               §§push(this._fld);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push("gui_popups_paperPopup");
                  if(_loc4_)
                  {
                     §§push(§§pop().libAllReadyLoaded(§§pop()));
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr008e);
                     }
                     addr007c:
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(!_temp_5)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr008e:
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(this._fld);
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00e7);
                        }
                     }
                     addr00bf:
                     §§goto(addr00a9);
                  }
                  addr00a9:
                  §§push(§§pop().libAllReadyLoaded("gui_popups_paperPopup"));
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(this._fld);
                        if(!_loc3_)
                        {
                           addr00d1:
                           §§pop().addEventListener(_loc2_,this.createEntries);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr00eb:
                              this._fld.checkSWFArrayLoaded(_loc1_,_loc2_);
                              addr00e7:
                           }
                           §§goto(addr00f1);
                        }
                        §§goto(addr00eb);
                     }
                  }
                  §§goto(addr00f1);
               }
               §§goto(addr00eb);
            }
         }
         addr00f1:
      }
      
      private function createEntries(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SideMenueArchCategoryVO = null;
         if(!(_loc3_ && _loc3_))
         {
            this._fld.removeEventListener("sideMenueNotification",this.createEntries);
         }
         _loc2_ = new SideMenueArchCategoryVO();
         if(_loc4_)
         {
            _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_firedepartment");
                  if(_loc4_ || Boolean(this))
                  {
                     addr00a6:
                     _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                     if(_loc4_)
                     {
                        addr00be:
                        _loc2_.type = ServerTagConstants.FIRE_DEPARTMENT;
                        if(!_loc3_)
                        {
                           _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.fireDepartmentTab"));
                           if(_loc4_)
                           {
                              addr00f0:
                              _loc2_.enable = this.entryEnabled(_loc2_.type);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0109:
                                 this.entries.addItem(_loc2_);
                              }
                           }
                           _loc2_ = new SideMenueArchCategoryVO();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                              if(_loc4_)
                              {
                                 _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_policedepartment");
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                       if(!(_loc3_ && Boolean(_loc2_)))
                                       {
                                          addr01ae:
                                          _loc2_.type = ServerTagConstants.POLICE_DEPARTMENT;
                                          if(_loc4_)
                                          {
                                             _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.policeDepartmentTab"));
                                             if(_loc4_)
                                             {
                                                _loc2_.enable = this.entryEnabled(_loc2_.type);
                                                if(!_loc3_)
                                                {
                                                   addr01f2:
                                                   this.entries.addItem(_loc2_);
                                                }
                                             }
                                          }
                                          addr01fb:
                                          _loc2_ = new SideMenueArchCategoryVO();
                                          if(_loc4_)
                                          {
                                             _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_hospitaldepartment");
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§goto(addr026c);
                                                   }
                                                   §§goto(addr02d8);
                                                }
                                                addr026c:
                                                _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                if(!_loc3_)
                                                {
                                                   _loc2_.type = ServerTagConstants.HOSPITAL;
                                                   if(!_loc3_)
                                                   {
                                                      _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.hospitalDepartmentTab"));
                                                      if(!_loc3_)
                                                      {
                                                         addr02be:
                                                         _loc2_.enable = this.entryEnabled(_loc2_.type);
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            addr02d8:
                                                            this.entries.addItem(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               addr02e6:
                                                               this._entriesAvailable = true;
                                                            }
                                                         }
                                                         §§goto(addr02eb);
                                                      }
                                                      §§goto(addr02e6);
                                                   }
                                                   §§goto(addr02d8);
                                                }
                                                §§goto(addr02eb);
                                             }
                                             addr02eb:
                                             return;
                                          }
                                          §§goto(addr02be);
                                       }
                                       §§goto(addr01f2);
                                    }
                                    §§goto(addr01ae);
                                 }
                                 §§goto(addr01f2);
                              }
                              §§goto(addr01fb);
                           }
                           §§goto(addr01f2);
                        }
                        §§goto(addr0109);
                     }
                     §§goto(addr00f0);
                  }
               }
               §§goto(addr00be);
            }
            §§goto(addr00a6);
         }
         §§goto(addr00f0);
      }
      
      private function entryEnabled(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = this._playfieldObjectsProxy.getInfrastructureBuildingByDepartmentTag(param1);
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_.length > 0)
            {
               if(!_loc3_)
               {
                  if(!_loc2_[0].billboardObjectVo.isUnderConstruction())
                  {
                     if(_loc4_)
                     {
                        addr0060:
                        §§push(true);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0068:
                        return false;
                     }
                     return §§pop();
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0060);
            }
         }
         §§goto(addr0068);
      }
      
      public function getIndexByType(param1:String) : uint
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc3_:* = 0;
         while(_loc3_ < this.entries.length)
         {
            _loc2_ = this.entries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && Boolean(param1)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        addr0079:
                        if(_loc2_.type == param1)
                        {
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push(_loc3_);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 return §§pop();
                              }
                              addr00b3:
                              §§push(uint(§§pop() + 1));
                           }
                           else
                           {
                              addr00ac:
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 §§goto(addr00b3);
                              }
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr00ac);
                  }
               }
            }
            §§goto(addr0079);
         }
         return 0;
      }
      
      public function get entries() : ArrayList
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:SideMenueArchCategoryVO = null;
         for each(_loc1_ in super.data.source)
         {
            if(_loc4_)
            {
               _loc1_.enable = this.entryEnabled(_loc1_.type);
            }
         }
         return super.data as ArrayList;
      }
      
      public function addNewIconAt(param1:Array) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         for each(_loc2_ in this.entries.source)
         {
            if(_loc5_)
            {
               §§push(_loc2_);
               §§push(param1.indexOf(_loc2_.type) == -1);
               if(!(_loc6_ && Boolean(this)))
               {
                  §§push(!§§pop());
               }
               §§pop().isNew = §§pop();
            }
         }
      }
      
      public function get currentType() : String
      {
         return this._currentType;
      }
      
      public function set currentType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._currentType = param1;
         }
      }
   }
}

