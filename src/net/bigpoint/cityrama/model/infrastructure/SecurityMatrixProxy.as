package net.bigpoint.cityrama.model.infrastructure
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.SecurityMatrix;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SecurityMatrixProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SecurityMatrixProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && SecurityMatrixProxy))
      {
         NAME = "SecurityMatrixProxy";
      }
      
      private var _securityMatrix:SecurityMatrix;
      
      private var _gameConf:GameConfigProxy;
      
      private var _invalidatedTypes:Vector.<String>;
      
      private var _pO:PlayfieldObjectsProxy;
      
      public function SecurityMatrixProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0038:
               this._invalidatedTypes = new Vector.<String>();
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._securityMatrix = new SecurityMatrix();
            if(!(_loc1_ && Boolean(this)))
            {
               this._gameConf = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               if(_loc2_)
               {
                  this.invalidateAll();
               }
            }
         }
      }
      
      private function invalidate(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._invalidatedTypes.indexOf(param1) == -1)
            {
               if(!_loc3_)
               {
                  addr0037:
                  this._invalidatedTypes.push(param1);
                  if(_loc2_ || _loc2_)
                  {
                     addr004c:
                     sendNotification(ApplicationNotificationConstants.SECURITY_GRID_CHANGED);
                  }
                  §§goto(addr0057);
               }
               §§goto(addr004c);
            }
            addr0057:
            return;
         }
         §§goto(addr0037);
      }
      
      public function validate(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._invalidatedTypes.splice(this._invalidatedTypes.indexOf(param1),1);
         }
      }
      
      public function invalidateAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.invalidate(ServerTagConstants.FIRE_DEPARTMENT);
            if(!_loc2_)
            {
               this.invalidate(ServerTagConstants.POLICE_DEPARTMENT);
               if(_loc1_)
               {
                  addr0045:
                  this.invalidate(ServerTagConstants.HOSPITAL);
               }
            }
            return;
         }
         §§goto(addr0045);
      }
      
      public function get securityMatrix() : SecurityMatrix
      {
         return this._securityMatrix;
      }
      
      public function set securityMatrix(param1:SecurityMatrix) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._securityMatrix = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.invalidateAll();
            }
         }
      }
      
      public function removeObject(param1:IEmergencyInfrastructureVO) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ConfigSecurityGradeDTO = null;
         var _loc4_:Rectangle = null;
         var _loc2_:Rectangle = param1.matrix3dCoordinates;
         for each(_loc3_ in param1.listOfModifiedGrades)
         {
            _loc4_ = _loc2_.clone();
            _loc4_.x -= _loc3_.rangeX;
            if(_loc7_)
            {
               _loc4_.y -= _loc3_.rangeY;
               if(_loc7_ || Boolean(_loc2_))
               {
                  addr0084:
                  _loc4_.width += _loc3_.rangeX * 2;
                  if(!_loc8_)
                  {
                     _loc4_.height += _loc3_.rangeY * 2;
                     if(_loc7_ || Boolean(param1))
                     {
                        addr00c5:
                        this._securityMatrix.killObjectByIDAndRect(param1.id,_loc4_);
                        if(!(_loc7_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                     }
                  }
                  this.invalidate(_loc3_.type);
                  continue;
               }
               §§goto(addr00c5);
            }
            §§goto(addr0084);
         }
      }
      
      public function updateObject(param1:IEmergencyInfrastructureVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.removeObject(param1);
            if(!_loc2_)
            {
               this.addObject(param1);
            }
         }
      }
      
      public function addObject(param1:IEmergencyInfrastructureVO) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc5_:Rectangle = null;
         var _loc6_:SecurityStatusVo = null;
         if(_loc10_ || Boolean(param1))
         {
            if(param1.listOfModifiedGrades.length == 0)
            {
               if(_loc10_ || Boolean(this))
               {
                  §§goto(addr0052);
               }
            }
            else
            {
               if(param1 is DecorationFieldObjectVo)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push((param1 as DecorationFieldObjectVo).decorationVo);
                     if(_loc10_ || Boolean(this))
                     {
                        if(§§pop().dto == null)
                        {
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              §§goto(addr00a4);
                           }
                           else
                           {
                              §§goto(addr00ec);
                           }
                        }
                        else
                        {
                           §§push((param1 as DecorationFieldObjectVo).decorationVo);
                        }
                     }
                     §§push(§§pop().id);
                     if(_loc10_)
                     {
                        §§push(§§pop());
                        if(!_loc9_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc9_ && Boolean(this)))
                           {
                              §§goto(addr0111);
                           }
                           §§goto(addr0139);
                        }
                        else
                        {
                           addr0102:
                           _loc2_ = §§pop();
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              addr0111:
                              if(isNaN(_loc2_))
                              {
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    addr0139:
                                    return;
                                 }
                              }
                              §§goto(addr013a);
                           }
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr0102);
                  }
                  addr00a4:
                  return;
               }
               if(param1.buildingDTO == null)
               {
                  if(_loc10_)
                  {
                     addr00ec:
                     return;
                  }
               }
               else
               {
                  addr00fb:
                  §§goto(addr0102);
                  §§push(Number(param1.buildingDTO.id));
               }
               addr013a:
               var _loc3_:Rectangle = param1.matrix3dCoordinates;
               for each(_loc4_ in param1.listOfModifiedGrades)
               {
                  _loc5_ = _loc3_.clone();
                  _loc5_.x -= _loc4_.rangeX;
                  if(_loc10_)
                  {
                     _loc5_.y -= _loc4_.rangeY;
                     if(_loc10_ || Boolean(this))
                     {
                        _loc5_.width += _loc4_.rangeX * 2;
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           addr01b3:
                           _loc5_.height += _loc4_.rangeY * 2;
                        }
                     }
                     _loc6_ = new SecurityStatusVo(_loc5_.x,_loc5_.y,_loc4_.type,_loc2_,_loc4_.value);
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        this._securityMatrix.setObjectByRect(_loc6_,_loc5_);
                     }
                     _loc6_ = new SecurityStatusVo(_loc3_.x,_loc3_.y,_loc4_.type,_loc2_,SecurityStatusVo.BLOCKED_BY_DEVICE);
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        this._securityMatrix.setObjectByRect(_loc6_,_loc3_);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           this.invalidate(_loc4_.type);
                        }
                     }
                     continue;
                  }
                  §§goto(addr01b3);
               }
               return;
               §§goto(addr0102);
            }
            §§goto(addr00fb);
         }
         addr0052:
      }
      
      public function getSecurityStatusByRect(param1:Rectangle) : Vector.<SecurityStatusVo>
      {
         return this._securityMatrix.getOverallStatusByRect(param1);
      }
      
      public function getSecurityStatusByBuildingId(param1:Number) : Vector.<SecurityStatusVo>
      {
         var _loc2_:BillboardObject = this.playfieldObjectsProxy.getBillboardById(param1);
         return this.getSecurityStatusByRect(_loc2_.billboardObjectVo.matrixCoordinates);
      }
      
      public function getCurrentSecGradeByDepartment(param1:Number, param2:String) : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:SecurityStatusVo = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.getSecurityStatusByBuildingId(param1);
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc7_)
               {
                  break;
               }
               if(_loc3_.securtiyType == param2)
               {
                  if(_loc7_ || Boolean(this))
                  {
                     break;
                  }
               }
            }
            return 0;
         }
         return _loc3_.level;
      }
      
      private function get playfieldObjectsProxy() : PlayfieldObjectsProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._pO);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._pO = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
               }
               addr0053:
               return this._pO;
            }
         }
         §§goto(addr0053);
      }
      
      public function get invalidatedTypes() : Vector.<String>
      {
         return this._invalidatedTypes;
      }
      
      public function resetMatrix() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._securityMatrix = new SecurityMatrix();
            if(!(_loc2_ && _loc2_))
            {
               this.invalidateAll();
            }
         }
      }
   }
}

