package net.bigpoint.cityrama.model.emergencyLayer
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DepartmentRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyInfoProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyInfoProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "EmergencyInfoProxy";
      }
      
      private var _configProxy:GameConfigProxy;
      
      private var _securityMatrixProxy:SecurityMatrixProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _storageProxy:LocalStorageProxy;
      
      private var _emergencyDictionary:Dictionary;
      
      public function EmergencyInfoProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            if(_loc1_)
            {
               §§goto(addr002a);
            }
            §§goto(addr007c);
         }
         addr002a:
         this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(!(_loc2_ && Boolean(this)))
         {
            this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
            if(!(_loc2_ && Boolean(this)))
            {
               addr007c:
               this._storageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
               if(!(_loc2_ && Boolean(this)))
               {
                  this._emergencyDictionary = new Dictionary();
               }
            }
         }
      }
      
      public function getEmergencyInfo(param1:BillboardObjectVo, param2:Boolean = false) : EmergencyInfoVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            if(this._emergencyDictionary[param1.buildingDTO.id])
            {
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0049);
               }
            }
            return this.addEmergency(param1);
         }
         addr0049:
         return this._emergencyDictionary[param1.buildingDTO.id];
      }
      
      public function removeEmergency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            delete this._emergencyDictionary[param1];
         }
      }
      
      public function calculateTempAttribute(param1:EmergencyInfoVo, param2:ProfessionalDTO, param3:String) : Number
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = param3;
         if(!(_loc7_ && Boolean(param2)))
         {
            §§push(ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(_loc6_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc8_ || Boolean(param2))
                        {
                        }
                     }
                     else
                     {
                        addr01a2:
                        §§push(2);
                        if(_loc8_)
                        {
                        }
                     }
                     §§goto(addr01ba);
                  }
                  else
                  {
                     §§push(ServerProfessionalConstants.ATTRIBUTE_LUCK);
                     if(_loc8_)
                     {
                        §§push(_loc6_);
                        if(_loc8_ || Boolean(param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_ || Boolean(this))
                              {
                                 addr0182:
                                 §§push(1);
                                 if(_loc7_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr01a2);
                              }
                              §§goto(addr01ba);
                           }
                           else
                           {
                              §§goto(addr019e);
                           }
                        }
                        addr019e:
                     }
                     §§goto(addr019c);
                  }
               }
               §§goto(addr019e);
            }
            addr019c:
            if(ServerProfessionalConstants.ATTRIBUTE_GOOFINESS === _loc6_)
            {
               §§goto(addr01a2);
            }
            else
            {
               §§push(3);
            }
            addr01ba:
            switch(§§pop())
            {
               case 0:
                  §§push(param1.efficiencyPoints);
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§push(param1.efficiencyMaxPoints);
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc8_ || Boolean(param2))
                              {
                                 _loc5_ = §§pop();
                                 if(_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0071:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr0078:
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                       addr0080:
                                       §§push(param1.luckMaxPoints);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                             }
                                             addr01e8:
                                             §§push(_loc4_);
                                             if(_loc8_)
                                             {
                                                addr01f0:
                                                addr0202:
                                                §§push(§§pop() + this._professionalProxy.getAttributePointsByType(param2,param3));
                                                if(_loc8_)
                                                {
                                                   addr0201:
                                                   §§push(§§pop());
                                                }
                                                _loc4_ = §§pop();
                                                break;
                                             }
                                          }
                                          §§goto(addr0201);
                                       }
                                       else
                                       {
                                          addr00b0:
                                          §§push(§§pop());
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             addr00bf:
                                             _loc4_ = §§pop();
                                             if(_loc8_)
                                             {
                                                §§push(param1.goofyMaxPoints);
                                                if(!_loc7_)
                                                {
                                                   addr00d1:
                                                   §§push(§§pop());
                                                   if(_loc8_ || Boolean(param3))
                                                   {
                                                      addr00e0:
                                                      _loc5_ = §§pop();
                                                      if(_loc7_ && Boolean(param2))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr01e8);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                §§goto(addr00e0);
                                             }
                                             §§goto(addr01e8);
                                          }
                                       }
                                       §§goto(addr0202);
                                    }
                                    §§goto(addr01e8);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr01e8);
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0071);
               case 1:
                  §§push(param1.luckPoints);
                  if(_loc8_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr00e0);
               case 2:
                  §§push(param1.goofyPoints);
                  if(_loc8_ || Boolean(param3))
                  {
                     §§goto(addr00b0);
                  }
                  §§goto(addr0201);
               default:
                  §§goto(addr01e8);
            }
            return Math.round(_loc4_ / (_loc5_ / 100));
         }
         §§goto(addr0182);
      }
      
      public function calculateTempSuccessRate(param1:EmergencyInfoVo, param2:ProfessionalDTO, param3:int) : Number
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:EmergencyRequirementDTO = null;
         var _loc6_:EmergencyRequirementDTO = null;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc4_:* = param1.currentSuccessPoints;
         if(_loc13_)
         {
            if(param1.slotVector.length)
            {
               if(_loc13_)
               {
                  addr004b:
                  if(param1.slotVector.length - 1 <= param3)
                  {
                     addr0057:
                     for each(_loc6_ in param1.emergencyDTO.config.emergencyRequirements)
                     {
                        if(_loc6_.slotNumber == param3)
                        {
                           _loc5_ = _loc6_;
                           break;
                        }
                     }
                     if(_loc13_)
                     {
                        §§push(Boolean(_loc5_));
                        if(!(_loc12_ && Boolean(param2)))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(!(_loc12_ && Boolean(param2)))
                              {
                                 addr00bf:
                                 §§pop();
                                 if(!_loc12_)
                                 {
                                    addr00c8:
                                    if(Boolean(param2))
                                    {
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          §§push(0);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop());
                                             if(_loc13_)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc13_ || Boolean(this))
                                                {
                                                   §§push(param2.configSpecialisation.department);
                                                   if(_loc13_ || Boolean(param2))
                                                   {
                                                      if(§§pop() == _loc5_.configSpecialization.department)
                                                      {
                                                         if(!(_loc12_ && Boolean(param3)))
                                                         {
                                                            §§push(_loc5_.configSpecialization);
                                                            if(!(_loc12_ && Boolean(param2)))
                                                            {
                                                               §§push(§§pop().rank);
                                                               if(!(_loc12_ && Boolean(this)))
                                                               {
                                                                  §§push(param2.configSpecialisation);
                                                                  if(!(_loc12_ && Boolean(param3)))
                                                                  {
                                                                     §§push(§§pop().rank);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc13_ || Boolean(param3))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc13_)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(_loc5_.configSpecialization);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(§§pop().rank);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(param2.configSpecialisation);
                                                                                          if(_loc13_ || Boolean(this))
                                                                                          {
                                                                                             §§push(§§pop().rank);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      addr01c1:
                                                                                                      §§push(_loc5_.configSpecialization);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(§§pop().id);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(param2.configSpecialisation.id);
                                                                                                            if(_loc13_ || Boolean(param3))
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  if(_loc13_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§push(_loc5_.configSpecialization);
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().slotMaxValue);
                                                                                                                        if(_loc13_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(0.5);
                                                                                                                           if(_loc13_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 addr022d:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr0440:
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             addr0458:
                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                             if(_loc13_ || Boolean(param2))
                                                                                                                                             {
                                                                                                                                                addr056e:
                                                                                                                                                var _loc10_:* = _loc5_.configSpecialization.department;
                                                                                                                                                addr056b:
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                                                                                   if(!(_loc12_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                            {
                                                                                                                                                               addr05a3:
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc13_ || Boolean(param2))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr05f3:
                                                                                                                                                               §§push(2);
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr060b:
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               loop1:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  switch(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     case 0:
                                                                                                                                                                        §§push(param1.currentFireGrade);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc12_ && Boolean(param2)))
                                                                                                                                                                           {
                                                                                                                                                                              addr0486:
                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.requiredFireGrade);
                                                                                                                                                                                 if(!(_loc12_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr04a0:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                       if(_loc12_ && Boolean(param2))
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr052c:
                                                                                                                                                                                    addr052c:
                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0534:
                                                                                                                                                                                    §§push(param1.requiredHospitalGrade);
                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr053e:
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc13_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                          if(_loc13_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0756:
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0772:
                                                                                                                                                                                             addr0774:
                                                                                                                                                                                             addr0784:
                                                                                                                                                                                             §§push(§§pop() + _loc7_);
                                                                                                                                                                                             if(_loc13_ || Boolean(param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0783:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                                                                             break loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0783);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr06f3:
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr04d6:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                       if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04ed:
                                                                                                                                                                                          §§push(param1.requiredPoliceGrade);
                                                                                                                                                                                          if(!_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr04f7:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc12_ && Boolean(param2)))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                if(!(_loc12_ && Boolean(param2)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr066b:
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr067b:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0682:
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0756);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0783);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr06de:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      if(_loc12_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0706:
                                                                                                                                                                                                      addr0704:
                                                                                                                                                                                                      if(§§pop() == 2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop1;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         if(_loc13_ || Boolean(param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0720:
                                                                                                                                                                                                            §§push(0.25);
                                                                                                                                                                                                            if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0730:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr073f:
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc13_ || Boolean(param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr074e:
                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop1;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0756);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0772);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0783);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0774);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr073f);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0756);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr069e:
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr06a6:
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr06b5:
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc13_ || Boolean(param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr06cf:
                                                                                                                                                                                                               §§push(0.5);
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr06de);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr074e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0730);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0720);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0756);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr06f3);
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0784);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0706);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06de);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr06f5:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc13_ || Boolean(param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0704);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0784);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr052c);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0756);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr063a:
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(_loc13_ || Boolean(param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr064a:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc13_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc12_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr066b);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0756);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr069e);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06f3);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr06b5);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0720);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06f5);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0534);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04a0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr053e);
                                                                                                                                                                     case 1:
                                                                                                                                                                        §§push(param1.currentPoliceGrade);
                                                                                                                                                                        if(_loc13_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr04d6);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06f3);
                                                                                                                                                                     case 2:
                                                                                                                                                                        §§push(param1.currentHospitalGrade);
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr052c);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr069e);
                                                                                                                                                                  }
                                                                                                                                                                  addr062a:
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  if(!(_loc12_ && Boolean(param3)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr063a);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr069e);
                                                                                                                                                               }
                                                                                                                                                               addr0786:
                                                                                                                                                               return Math.round(_loc4_ / (param1.maxSuccessPoints / 100));
                                                                                                                                                               addr0613:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr063a);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr05f3);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr05ef:
                                                                                                                                                                     addr05ed:
                                                                                                                                                                     if(ServerTagConstants.HOSPITAL === _loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr05f3);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(3);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr060b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr05ef);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr05ed);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05ef);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr05ed);
                                                                                                                                                }
                                                                                                                                                §§goto(addr05a3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0756);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0613);
                                                                                                                                       }
                                                                                                                                       §§goto(addr062a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr06f3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr073f);
                                                                                                                              }
                                                                                                                              §§goto(addr06de);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr041a:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc13_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    if(!(_loc12_ && Boolean(param2)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr0440);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0756);
                                                                                                                                 }
                                                                                                                                 §§goto(addr06de);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr067b);
                                                                                                                        }
                                                                                                                        §§goto(addr0486);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0282:
                                                                                                                        §§push(§§pop().rank);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           §§push(param2.configSpecialisation);
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().rank);
                                                                                                                              if(!(_loc12_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc12_ && Boolean(param3)))
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.configSpecialization);
                                                                                                                                       if(_loc13_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().slotMaxValue);
                                                                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0440);
                                                                                                                                                }
                                                                                                                                                §§goto(addr062a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0682);
                                                                                                                                          }
                                                                                                                                          §§goto(addr052c);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr03b0:
                                                                                                                                          §§push(§§pop().rank);
                                                                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr03d2:
                                                                                                                                             §§push(param2.configSpecialisation.rank);
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc13_ || Boolean(param3))
                                                                                                                                                {
                                                                                                                                                   addr03ea:
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr03fc:
                                                                                                                                                            §§push(_loc5_.configSpecialization);
                                                                                                                                                            if(_loc13_ || Boolean(param3))
                                                                                                                                                            {
                                                                                                                                                               addr040f:
                                                                                                                                                               §§push(§§pop().slotMaxValue);
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  addr0418:
                                                                                                                                                                  §§goto(addr041a);
                                                                                                                                                                  §§push(0.25);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0458);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr056b);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr062a);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0440);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0706);
                                                                                                                                                }
                                                                                                                                                §§goto(addr073f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr064a);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0418);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr0534);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0440);
                                                                                                                              }
                                                                                                                              §§goto(addr064a);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr032d:
                                                                                                                              §§push(§§pop().rank);
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 addr0336:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc13_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr034d:
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc12_ && Boolean(param2)))
                                                                                                                                          {
                                                                                                                                             addr035f:
                                                                                                                                             §§push(_loc5_.configSpecialization);
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                addr036a:
                                                                                                                                                §§push(§§pop().slotMaxValue);
                                                                                                                                                if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§push(0.5);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         addr038a:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0440);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr066b);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0682);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr06cf);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr041a);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0613);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr040f);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr03fc);
                                                                                                                                          }
                                                                                                                                          §§goto(addr056b);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.configSpecialization);
                                                                                                                                          if(_loc13_ || Boolean(param2))
                                                                                                                                          {
                                                                                                                                             §§goto(addr03b0);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr040f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr06b5);
                                                                                                                                 }
                                                                                                                                 §§goto(addr038a);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr06a6);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr053e);
                                                                                                                  }
                                                                                                                  §§goto(addr04ed);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(_loc5_.configSpecialization);
                                                                                                                  if(_loc13_ || Boolean(param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop().slotMaxValue);
                                                                                                                     if(!(_loc12_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr0440);
                                                                                                                        }
                                                                                                                        §§goto(addr06cf);
                                                                                                                     }
                                                                                                                     §§goto(addr06f3);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr036a);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr036a);
                                                                                                            }
                                                                                                            §§goto(addr0774);
                                                                                                         }
                                                                                                         §§goto(addr03ea);
                                                                                                      }
                                                                                                      §§goto(addr0282);
                                                                                                   }
                                                                                                   §§goto(addr035f);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc5_.configSpecialization);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§goto(addr0282);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr040f);
                                                                                             }
                                                                                             §§goto(addr06f5);
                                                                                          }
                                                                                          §§goto(addr03d2);
                                                                                       }
                                                                                       §§goto(addr063a);
                                                                                    }
                                                                                    §§goto(addr040f);
                                                                                 }
                                                                                 §§goto(addr0756);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc5_.configSpecialization);
                                                                                 if(_loc13_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop().rank);
                                                                                    if(!(_loc12_ && Boolean(param3)))
                                                                                    {
                                                                                       §§push(param2.configSpecialisation);
                                                                                       if(!(_loc12_ && Boolean(param3)))
                                                                                       {
                                                                                          §§goto(addr032d);
                                                                                       }
                                                                                       §§goto(addr03d2);
                                                                                    }
                                                                                    §§goto(addr04a0);
                                                                                 }
                                                                              }
                                                                              §§goto(addr036a);
                                                                           }
                                                                           §§goto(addr034d);
                                                                        }
                                                                        §§goto(addr022d);
                                                                     }
                                                                     §§goto(addr0336);
                                                                  }
                                                                  §§goto(addr03d2);
                                                               }
                                                               §§goto(addr04f7);
                                                            }
                                                            §§goto(addr056b);
                                                         }
                                                         §§goto(addr0756);
                                                      }
                                                      §§goto(addr0440);
                                                   }
                                                   §§goto(addr056e);
                                                }
                                                §§goto(addr062a);
                                             }
                                             §§goto(addr0772);
                                          }
                                          §§goto(addr052c);
                                       }
                                       §§goto(addr01c1);
                                    }
                                    §§goto(addr0756);
                                 }
                                 §§goto(addr066b);
                              }
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0756);
                  }
                  §§goto(addr0786);
               }
               §§goto(addr0057);
            }
            §§goto(addr0786);
         }
         §§goto(addr004b);
      }
      
      public function calculateTempReward(param1:EmergencyInfoVo, param2:ProfessionalDTO) : ConfigGoodDTO
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:* = 0;
         §§push(param1.luckPoints);
         if(_loc9_ || Boolean(param2))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         for each(_loc5_ in param2.attributes)
         {
            if(_loc5_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_LUCK)
            {
               if(!(_loc10_ && Boolean(this)))
               {
                  §§push(_loc4_);
                  if(!(_loc10_ && Boolean(param2)))
                  {
                     §§push(§§pop() + _loc5_.attributePoints);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc4_ = §§pop();
               }
               break;
            }
         }
         if(!_loc10_)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc10_)
                  {
                     _loc3_ = param1.rewardTypeThresholds[0];
                     if(_loc9_ || Boolean(param2))
                     {
                        §§goto(addr018e);
                     }
                     §§goto(addr01a1);
                  }
               }
               else
               {
                  §§push(_loc4_);
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     addr00f6:
                     if(§§pop() > param1.luckMaxPoints)
                     {
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           _loc3_ = param1.rewardTypeThresholds[param1.rewardTypeThresholds.length - 1];
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              addr0184:
                              loop2:
                              while(§§pop() < param1.rewardTypeThresholds.length)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    if(§§pop() > param1.rewardTypeThresholds[_loc6_].threshold)
                                    {
                                       if(!(_loc9_ || Boolean(this)))
                                       {
                                          break loop2;
                                       }
                                       _loc3_ = param1.rewardTypeThresholds[_loc6_];
                                    }
                                    _loc6_++;
                                    if(!(_loc9_ || Boolean(this)))
                                    {
                                       break loop2;
                                    }
                                    break loop2;
                                 }
                                 break;
                              }
                           }
                           addr0182:
                        }
                        §§goto(addr018e);
                     }
                     else
                     {
                        §§push(0);
                        if(_loc9_)
                        {
                           _loc6_ = §§pop();
                           if(_loc10_)
                           {
                           }
                           §§goto(addr0182);
                        }
                     }
                     §§goto(addr0184);
                  }
                  §§goto(addr0139);
               }
               addr018e:
               if(_loc3_)
               {
                  if(_loc9_ || Boolean(this))
                  {
                     addr01a1:
                     return this._configProxy.config.goods[_loc3_.value];
                  }
               }
               return null;
            }
            §§goto(addr00f6);
         }
         §§goto(addr0182);
      }
      
      public function calculateTempRewardAmount(param1:EmergencyInfoVo, param2:ProfessionalDTO) : Number
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:* = 0;
         §§push(param1.efficiencyPoints);
         if(!(_loc10_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         for each(_loc5_ in param2.attributes)
         {
            if(_loc5_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY)
            {
               if(!_loc10_)
               {
                  §§push(_loc4_);
                  if(_loc9_ || Boolean(param1))
                  {
                     §§push(§§pop() + _loc5_.attributePoints);
                     if(_loc9_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc4_ = §§pop();
               }
               break;
            }
         }
         if(!_loc10_)
         {
            §§push(_loc4_);
            if(!_loc10_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc10_)
                  {
                     _loc3_ = param1.rewardAmountThresholds[0];
                     if(_loc9_)
                     {
                        addr0181:
                        if(_loc3_)
                        {
                           if(!(_loc10_ && Boolean(this)))
                           {
                              return _loc3_.value;
                           }
                        }
                     }
                     return 0;
                  }
                  while(true)
                  {
                     §§push(_loc6_);
                     addr0177:
                     loop1:
                     while(§§pop() < param1.rewardAmountThresholds.length)
                     {
                        §§push(_loc4_);
                        while(true)
                        {
                           if(§§pop() >= param1.rewardAmountThresholds[_loc6_].threshold)
                           {
                              if(!(_loc9_ || Boolean(this)))
                              {
                                 break loop1;
                              }
                              _loc3_ = param1.rewardAmountThresholds[_loc6_];
                           }
                           _loc6_++;
                           if(!(_loc9_ || Boolean(param1)))
                           {
                              break;
                           }
                           break loop1;
                        }
                        break;
                     }
                  }
                  addr0175:
                  §§goto(addr0181);
               }
               else
               {
                  §§push(_loc4_);
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     if(§§pop() >= param1.efficiencyMaxPoints)
                     {
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           _loc3_ = param1.rewardAmountThresholds[param1.rewardAmountThresholds.length - 1];
                        }
                        else
                        {
                           §§goto(addr0175);
                        }
                        §§goto(addr0181);
                     }
                     else
                     {
                        §§push(0);
                        if(!(_loc10_ && Boolean(param2)))
                        {
                           _loc6_ = §§pop();
                           if(!_loc10_)
                           {
                              §§goto(addr0175);
                           }
                           §§goto(addr0181);
                        }
                     }
                     §§goto(addr0177);
                  }
               }
            }
            §§goto(addr012d);
         }
         §§goto(addr0175);
      }
      
      public function assignProfessionalToSlot(param1:BillboardObjectVo, param2:int) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:SlotProfessionalVo = null;
         var _loc3_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc4_ in _loc3_.slotVector)
         {
            §§push(_loc4_.slotNo == param2);
            if(!(_loc8_ && Boolean(param2)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc7_)
                  {
                     addr006d:
                     §§pop();
                     if(_loc7_ || Boolean(this))
                     {
                        addr0090:
                        §§push(_loc4_.isTemporary);
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           addr008f:
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!(_loc7_ || Boolean(this)))
                        {
                           break;
                        }
                     }
                     _loc4_.isTemporary = false;
                     break;
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0090);
            }
            §§goto(addr006d);
         }
         if(!(_loc8_ && Boolean(param2)))
         {
            this.updateEmergencyAfterSlotChange(_loc3_);
         }
      }
      
      public function assignTemporaryProfessionalToSlot(param1:BillboardObjectVo, param2:int, param3:Number) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:SlotProfessionalVo = null;
         var _loc4_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         var _loc8_:int = 0;
         for each(_loc6_ in _loc4_.possibleProfessionals)
         {
            if(_loc6_.id == param3)
            {
               _loc5_ = _loc6_;
               break;
            }
         }
         if(_loc10_ || Boolean(this))
         {
            _loc8_ = 0;
         }
         for each(_loc7_ in _loc4_.slotVector)
         {
            if(_loc7_.slotNo == param2)
            {
               if(_loc10_)
               {
                  _loc7_.professional = _loc5_;
                  if(_loc10_ || Boolean(param3))
                  {
                     _loc7_.isTemporary = true;
                  }
               }
               break;
            }
         }
         if(!(_loc11_ && Boolean(param2)))
         {
            this.updateEmergencyAfterSlotChange(_loc4_);
         }
      }
      
      public function removeProfessionalFromSlot(param1:BillboardObjectVo, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:SlotProfessionalVo = null;
         var _loc3_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc4_ in _loc3_.slotVector)
         {
            if(_loc4_.slotNo == param2)
            {
               if(!_loc7_)
               {
                  _loc4_.professional = null;
               }
               break;
            }
         }
         if(!(_loc7_ && Boolean(param1)))
         {
            this.updateEmergencyAfterSlotChange(_loc3_);
         }
      }
      
      public function removeTemporaryProfessionals(param1:BillboardObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc3_ in _loc2_.slotVector)
         {
            if(_loc7_ || Boolean(this))
            {
               if(_loc3_.isTemporary)
               {
                  if(!_loc6_)
                  {
                     addr0073:
                     _loc3_.professional = null;
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  _loc3_.isTemporary = false;
                  break;
               }
               continue;
            }
            §§goto(addr0073);
         }
         if(_loc7_)
         {
            this.updateEmergencyAfterSlotChange(_loc2_);
         }
      }
      
      private function addEmergency(param1:BillboardObjectVo) : EmergencyInfoVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:SlotProfessionalVo = null;
         var _loc5_:EmergencyRequirementDTO = null;
         var _loc2_:EmergencyInfoVo = new EmergencyInfoVo(param1);
         if(!(_loc9_ && Boolean(_loc2_)))
         {
            _loc2_.requiredFireGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.FIRE_DEPARTMENT);
            if(!(_loc9_ && _loc3_))
            {
               _loc2_.requiredPoliceGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.POLICE_DEPARTMENT);
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  _loc2_.requiredHospitalGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.HOSPITAL);
                  if(_loc8_ || Boolean(param1))
                  {
                     _loc2_.currentFireGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.FIRE_DEPARTMENT);
                     if(_loc8_)
                     {
                        _loc2_.currentPoliceGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.POLICE_DEPARTMENT);
                        if(!_loc9_)
                        {
                           _loc2_.currentHospitalGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.HOSPITAL);
                           if(!_loc9_)
                           {
                              _loc2_.maxSuccessPercent = this.calculateMaxSuccess(_loc2_);
                              if(_loc8_ || _loc3_)
                              {
                                 addr010d:
                                 _loc2_.currentSuccessPercent = this.calculateCurrentSuccess(_loc2_);
                                 if(_loc8_ || _loc3_)
                                 {
                                    addr0126:
                                    _loc2_.possibleProfessionals = this.getAvailableProfessionals(_loc2_);
                                 }
                              }
                              var _loc3_:Vector.<SlotProfessionalVo> = new Vector.<SlotProfessionalVo>();
                              addr0130:
                              for each(_loc5_ in _loc2_.emergencyDTO.config.emergencyRequirements)
                              {
                                 _loc4_ = new SlotProfessionalVo();
                                 _loc4_.slotNo = _loc5_.slotNumber;
                                 if(!_loc9_)
                                 {
                                    _loc3_.push(_loc4_);
                                 }
                              }
                              if(_loc8_ || Boolean(param1))
                              {
                                 _loc2_.slotVector = _loc3_;
                                 if(!_loc9_)
                                 {
                                    _loc2_.efficiencyPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       addr01ce:
                                       _loc2_.luckPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          _loc2_.goofyPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             addr020a:
                                             _loc2_.rewardAmountThresholds = this.getThresholds(_loc2_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                                             if(!_loc9_)
                                             {
                                                _loc2_.rewardTypeThresholds = this.getThresholds(_loc2_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
                                                if(!(_loc9_ && Boolean(param1)))
                                                {
                                                   _loc2_.currentReward = this.calculateCurrentReward(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      addr0251:
                                                      _loc2_.currentRewardAmount = this.calculateCurrentCoinAmount(_loc2_);
                                                      if(!_loc9_)
                                                      {
                                                         addr026f:
                                                         _loc2_.showZoneLayer = this._storageProxy.userdata.showEmergencyZoneLayer;
                                                         if(_loc8_ || Boolean(this))
                                                         {
                                                            addr028c:
                                                            this._emergencyDictionary[param1.buildingDTO.id] = _loc2_;
                                                         }
                                                      }
                                                   }
                                                }
                                                return _loc2_;
                                             }
                                             §§goto(addr0251);
                                          }
                                          §§goto(addr026f);
                                       }
                                       §§goto(addr020a);
                                    }
                                    §§goto(addr028c);
                                 }
                                 §§goto(addr0251);
                              }
                              §§goto(addr01ce);
                           }
                           §§goto(addr010d);
                        }
                     }
                  }
               }
               §§goto(addr0126);
            }
            §§goto(addr0130);
         }
         §§goto(addr0126);
      }
      
      public function renewProfessionalsInAllEmergencies() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:EmergencyInfoVo = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._emergencyDictionary)
         {
            if(_loc4_ || Boolean(this))
            {
               if(_loc1_)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc1_.possibleProfessionals = this.getAvailableProfessionals(_loc1_);
                  }
               }
            }
         }
      }
      
      private function getAvailableProfessionals(param1:EmergencyInfoVo) : Vector.<ProfessionalDTO>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:SlotProfessionalVo = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc2_:Vector.<ProfessionalDTO> = this._professionalProxy.allAvailableProfessionals;
         if(_loc10_)
         {
            if(param1.slotVector.length)
            {
               addr003b:
               for each(_loc3_ in param1.slotVector)
               {
                  if(!_loc9_)
                  {
                     if(!_loc3_.professional)
                     {
                        continue;
                     }
                     if(!_loc10_)
                     {
                        continue;
                     }
                  }
                  var _loc7_:int = 0;
                  if(!_loc9_)
                  {
                     for each(_loc4_ in _loc2_)
                     {
                        if(_loc10_ || Boolean(_loc3_))
                        {
                           if(_loc3_.professional.id == _loc4_.id)
                           {
                              if(_loc10_ || Boolean(this))
                              {
                                 _loc2_.splice(_loc2_.indexOf(_loc4_),1);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr003b);
      }
      
      private function getThresholds(param1:EmergencyInfoVo, param2:String) : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:ConfigProfessionalAttributeDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         §§push(param2);
         while(true)
         {
            var _loc7_:* = §§pop();
            if(_loc11_ || Boolean(param2))
            {
               §§push(ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
               if(!_loc12_)
               {
                  §§push(_loc7_);
                  if(!_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && Boolean(param2)))
                        {
                           addr00ba:
                           §§push(0);
                           if(_loc11_)
                           {
                           }
                        }
                        else
                        {
                           addr00df:
                           §§push(1);
                           if(_loc12_)
                           {
                           }
                        }
                        addr00f7:
                        if(_loc11_)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(ServerProfessionalConstants.REWARD_AMOUNT);
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc11_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc12_)
                                       {
                                       }
                                       break;
                                    }
                                 }
                                 continue;
                              case 1:
                                 §§push(ServerProfessionalConstants.REWARD_TIER);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 §§goto(addr01bf);
                           }
                           §§push(0);
                        }
                        break;
                     }
                     addr00db:
                     addr00d9:
                     if(ServerProfessionalConstants.ATTRIBUTE_LUCK === _loc7_)
                     {
                        §§goto(addr00df);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr00f7);
                     §§goto(addr00df);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr00d9);
            }
            §§goto(addr00ba);
         }
         _loc7_ = §§pop();
         if(!(_loc12_ && Boolean(this)))
         {
            for each(_loc5_ in this._configProxy.config.professionalAttributes)
            {
               if(_loc5_.attributeType == param2)
               {
                  if(!(_loc12_ && Boolean(param2)))
                  {
                     var _loc9_:int = 0;
                     if(_loc11_)
                     {
                        for each(_loc6_ in _loc5_.attributeThresholds)
                        {
                           if(_loc6_.type == _loc4_)
                           {
                              if(_loc11_)
                              {
                                 _loc3_.push(_loc6_);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(_loc11_)
         {
            _loc3_.sort(this.sortThresholds);
         }
         addr01bf:
         return _loc3_;
      }
      
      public function sortThresholds(param1:ConfigProfessionalAttributeThresholdDTO, param2:ConfigProfessionalAttributeThresholdDTO) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.threshold);
            if(!(_loc3_ && Boolean(param2)))
            {
               §§push(param2.threshold);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        addr0049:
                        §§push(1);
                        if(_loc4_)
                        {
                           §§goto(addr0051);
                        }
                     }
                     else
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr0095);
                  }
                  addr0057:
                  §§push(param1.threshold);
                  if(_loc4_)
                  {
                     addr0071:
                     if(§§pop() < param2.threshold)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(-1);
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr0092);
                           }
                        }
                        else
                        {
                           addr0093:
                           §§push(0);
                        }
                        addr0095:
                        return §§pop();
                     }
                     §§goto(addr0093);
                  }
                  addr0092:
                  return §§pop();
               }
               §§goto(addr0071);
            }
            addr0051:
            return §§pop();
         }
         §§goto(addr0049);
      }
      
      private function calculateAttributes(param1:EmergencyInfoVo, param2:String) : Number
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:SlotProfessionalVo = null;
         var _loc6_:ConfigProfessionalAttributeDTO = null;
         var _loc7_:ProfessionalAttributeDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = param1.slotVector;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(_loc12_ && Boolean(_loc3_))
            {
               break;
            }
            if(§§pop())
            {
               _loc5_ = §§nextvalue(_loc8_,_loc9_);
               if(_loc5_.professional)
               {
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     var _loc10_:int = 0;
                     if(_loc13_ || Boolean(param2))
                     {
                        for each(_loc7_ in _loc5_.professional.attributes)
                        {
                           if(_loc7_.config.attributeType == param2)
                           {
                              if(!(_loc12_ && Boolean(param2)))
                              {
                                 §§push(_loc4_);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() + _loc7_.attributePoints);
                                    if(!(_loc12_ && Boolean(param2)))
                                    {
                                       §§push(§§pop());
                                    }
                                 }
                                 _loc4_ = §§pop();
                              }
                           }
                        }
                     }
                  }
               }
               continue;
            }
            if(!_loc12_)
            {
               if(!_loc12_)
               {
                  _loc8_ = 0;
               }
               _loc9_ = this._configProxy.config.professionalAttributes;
               while(true)
               {
                  §§push(§§hasnext(_loc9_,_loc8_));
                  break loop0;
               }
               addr014b:
            }
            if(_loc13_)
            {
               §§push(param2);
               if(_loc13_ || Boolean(_loc3_))
               {
                  §§push(ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_)
                        {
                           param1.efficiencyMaxPoints = _loc3_;
                           if(_loc13_ || Boolean(param1))
                           {
                              param1.efficiencyPoints = _loc4_;
                              if(_loc12_ && Boolean(param2))
                              {
                                 addr021d:
                                 param1.goofyMaxPoints = _loc3_;
                                 if(!(_loc12_ && Boolean(param1)))
                                 {
                                    §§goto(addr0230);
                                 }
                              }
                              §§goto(addr023c);
                           }
                           §§goto(addr021d);
                        }
                        addr0230:
                        param1.goofyPoints = _loc4_;
                        if(_loc13_)
                        {
                           addr023c:
                           §§push(_loc4_);
                           if(_loc13_ || Boolean(this))
                           {
                              §§push(_loc3_);
                              if(_loc13_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       §§goto(addr028f);
                                    }
                                 }
                                 §§goto(addr027d);
                              }
                              §§goto(addr028e);
                           }
                           addr028f:
                        }
                        §§goto(addr026b);
                     }
                     else
                     {
                        §§push(param2);
                        if(!_loc12_)
                        {
                           addr01bb:
                           §§push(ServerProfessionalConstants.ATTRIBUTE_LUCK);
                           if(_loc13_ || Boolean(param1))
                           {
                              addr01cf:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    param1.luckMaxPoints = _loc3_;
                                    if(_loc13_)
                                    {
                                       param1.luckPoints = _loc4_;
                                       if(!(_loc12_ && Boolean(this)))
                                       {
                                          §§goto(addr023c);
                                       }
                                       §§goto(addr026b);
                                    }
                                 }
                                 §§goto(addr027d);
                              }
                              else
                              {
                                 addr020b:
                                 addr0205:
                                 if(param2 == ServerProfessionalConstants.ATTRIBUTE_GOOFINESS)
                                 {
                                    if(!(_loc12_ && Boolean(param2)))
                                    {
                                       §§goto(addr021d);
                                    }
                                    addr026b:
                                    §§push(_loc3_);
                                    if(_loc13_ || Boolean(param2))
                                    {
                                       _loc4_ = §§pop();
                                       addr027d:
                                       §§push(_loc4_);
                                       if(!(_loc12_ && Boolean(param1)))
                                       {
                                          addr028e:
                                          return §§pop() / _loc3_;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr023c);
                           }
                           §§goto(addr020b);
                        }
                        §§goto(addr0205);
                     }
                  }
                  §§goto(addr01cf);
               }
               §§goto(addr01bb);
            }
            §§goto(addr023c);
         }
         while(§§pop())
         {
            _loc6_ = §§nextvalue(_loc8_,_loc9_);
            if(_loc6_.attributeType == param2)
            {
               if(!(_loc12_ && Boolean(param1)))
               {
                  _loc3_ = _loc6_.attributeThresholds.length * _loc6_.maxCap;
               }
               break;
            }
            §§goto(addr014b);
         }
         §§goto(addr0152);
      }
      
      private function calculateCurrentSuccess(param1:EmergencyInfoVo) : Number
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:EmergencyRequirementDTO = null;
         var _loc8_:SlotProfessionalVo = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         for each(_loc7_ in param1.emergencyDTO.config.emergencyRequirements)
         {
            _loc6_ = null;
            if(!_loc14_)
            {
               §§push(0);
               if(_loc13_)
               {
                  §§push(§§pop());
                  if(!_loc14_)
                  {
                     _loc5_ = §§pop();
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        if(param1.slotVector.length)
                        {
                           if(!(_loc14_ && Boolean(_loc2_)))
                           {
                              addr0099:
                              addr0097:
                              for each(_loc8_ in param1.slotVector)
                              {
                                 if(_loc8_.slotNo == _loc7_.slotNumber)
                                 {
                                    _loc6_ = _loc8_.professional;
                                    break;
                                 }
                              }
                              if(_loc13_ || Boolean(this))
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(_loc6_.configSpecialisation.department);
                                       if(!_loc14_)
                                       {
                                          if(§§pop() == _loc7_.configSpecialization.department)
                                          {
                                             if(_loc13_)
                                             {
                                                §§push(_loc7_.configSpecialization);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop().rank);
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc6_.configSpecialisation);
                                                      if(!(_loc14_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop().rank);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc14_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(0);
                                                               if(!_loc14_)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc7_.configSpecialization);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(§§pop().rank);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(_loc6_.configSpecialisation);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(§§pop().rank);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(!(_loc14_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(_loc7_.configSpecialization);
                                                                                          if(!(_loc14_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr01af:
                                                                                             §§push(§§pop().id);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(_loc6_.configSpecialisation.id);
                                                                                                if(!(_loc14_ && Boolean(this)))
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      if(_loc13_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(_loc7_.configSpecialization);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(§§pop().slotMaxValue);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc14_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(_loc13_ || Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           addr0551:
                                                                                                                           var _loc11_:* = _loc7_.configSpecialization.department;
                                                                                                                           addr0549:
                                                                                                                           addr054e:
                                                                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc14_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr05b7:
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc13_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!(_loc14_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr05b7);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr05d6:
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr05ee:
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr05f6:
                                                                                                                                                   switch(§§pop())
                                                                                                                                                   {
                                                                                                                                                      case 0:
                                                                                                                                                         §§push(param1.currentFireGrade);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               addr0464:
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               if(!(_loc13_ || Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(param1.requiredFireGrade);
                                                                                                                                                               if(_loc13_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  addr0485:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                     if(_loc14_ && Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        addr04d1:
                                                                                                                                                                        §§push(param1.requiredPoliceGrade);
                                                                                                                                                                        if(_loc13_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           addr04e3:
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc13_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr060d:
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 if(_loc13_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr061c:
                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0624:
                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr062e:
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0636:
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr063d:
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0645:
                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                      if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0654:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0663:
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_ || Boolean(this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0675:
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(_loc13_ || Boolean(_loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0685:
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        if(_loc14_ && Boolean(this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr070e:
                                                                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                                                                           if(_loc14_ && Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0694:
                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr06be:
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(_loc13_ || Boolean(param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr06ce:
                                                                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr06d8:
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              if(_loc13_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr06e8:
                                                                                                                                                                                                                                 §§push(0.5);
                                                                                                                                                                                                                                 if(_loc13_ || Boolean(param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr06ff:
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!(_loc13_ || Boolean(_loc2_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr076a:
                                                                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                                                                          addr0769:
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr070e);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr075a:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc13_ || Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr0769);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0725:
                                                                                                                                                                                                                              addr0724:
                                                                                                                                                                                                                              §§push(_loc4_ - _loc3_);
                                                                                                                                                                                                                              if(_loc13_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0736:
                                                                                                                                                                                                                                 if(§§pop() != 2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc14_ && Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr0748:
                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0758:
                                                                                                                                                                                                                                    §§goto(addr075a);
                                                                                                                                                                                                                                    §§push(0.25);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr076a);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0736);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0748);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr06d8);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr06a8:
                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr06af:
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr06be);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0769);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0725);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0724);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0736);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr06be);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr06af);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0724);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0748);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0645);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0748);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr063d);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0725);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0636);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0748);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr061c);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0529:
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              if(_loc13_ || Boolean(_loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr060d);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0748);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0724);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr060d);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr061c);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0636);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr04c2:
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               if(!(_loc13_ || Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04d1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04e3);
                                                                                                                                                      case 1:
                                                                                                                                                         §§push(param1.currentPoliceGrade);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr04c2);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04e3);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0724);
                                                                                                                                                      case 2:
                                                                                                                                                         §§push(param1.currentHospitalGrade);
                                                                                                                                                         if(!(_loc14_ && Boolean(param1)))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(param1.requiredHospitalGrade);
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0529);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr06a8);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0724);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      default:
                                                                                                                                                         §§goto(addr060d);
                                                                                                                                                   }
                                                                                                                                                   addr076c:
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(!(_loc14_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + _loc5_);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr0784:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr078c:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   _loc6_ = null;
                                                                                                                                                   addr0792:
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr0645);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr05d2:
                                                                                                                                                addr05d0:
                                                                                                                                                if(ServerTagConstants.HOSPITAL === _loc11_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr05d6);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(3);
                                                                                                                                                }
                                                                                                                                                §§goto(addr05ee);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr05d2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05d0);
                                                                                                                                    }
                                                                                                                                    §§goto(addr05ee);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05d2);
                                                                                                                              }
                                                                                                                              §§goto(addr05d0);
                                                                                                                           }
                                                                                                                           §§goto(addr05d6);
                                                                                                                        }
                                                                                                                        §§goto(addr062e);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr043e:
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§goto(addr0549);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0748);
                                                                                                                  }
                                                                                                                  §§goto(addr0685);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0379:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     addr0380:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc14_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(!(_loc14_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           §§goto(addr0549);
                                                                                                                        }
                                                                                                                        §§goto(addr0675);
                                                                                                                     }
                                                                                                                     §§goto(addr06e8);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0758);
                                                                                                            }
                                                                                                            §§goto(addr0645);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr03b6:
                                                                                                            §§push(§§pop().rank);
                                                                                                            if(_loc13_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr03cc:
                                                                                                               §§push(_loc6_.configSpecialisation.rank);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.configSpecialization);
                                                                                                                              if(!(_loc14_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().slotMaxValue);
                                                                                                                                 if(_loc13_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr0420:
                                                                                                                                    §§push(§§pop() * 0.25);
                                                                                                                                    if(_loc13_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       addr042f:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr043e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0694);
                                                                                                                                    }
                                                                                                                                    §§goto(addr070e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0485);
                                                                                                                              }
                                                                                                                              §§goto(addr054e);
                                                                                                                           }
                                                                                                                           §§goto(addr06d8);
                                                                                                                        }
                                                                                                                        §§goto(addr0549);
                                                                                                                     }
                                                                                                                     §§goto(addr0663);
                                                                                                                  }
                                                                                                                  §§goto(addr042f);
                                                                                                               }
                                                                                                               §§goto(addr0624);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0464);
                                                                                                      }
                                                                                                      §§goto(addr0549);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc7_.configSpecialization);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(§§pop().slotMaxValue);
                                                                                                         if(_loc13_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§goto(addr0549);
                                                                                                               }
                                                                                                               §§goto(addr06d8);
                                                                                                            }
                                                                                                            §§goto(addr0694);
                                                                                                         }
                                                                                                         §§goto(addr0636);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr02b8:
                                                                                                         §§push(§§pop().slotMaxValue);
                                                                                                         if(!(_loc14_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(_loc13_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr0549);
                                                                                                               }
                                                                                                               §§goto(addr063d);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0380);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0529);
                                                                                                }
                                                                                                §§goto(addr075a);
                                                                                             }
                                                                                             §§goto(addr076a);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0266:
                                                                                             §§push(§§pop().rank);
                                                                                             if(!(_loc14_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(_loc6_.configSpecialisation);
                                                                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr028a:
                                                                                                   §§push(§§pop().rank);
                                                                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(_loc7_.configSpecialization);
                                                                                                            if(_loc13_ || Boolean(param1))
                                                                                                            {
                                                                                                               §§goto(addr02b8);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0360:
                                                                                                               §§push(§§pop().slotMaxValue);
                                                                                                               if(!(_loc14_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§goto(addr0379);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0420);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr04c2);
                                                                                                         }
                                                                                                         §§goto(addr0675);
                                                                                                      }
                                                                                                      §§goto(addr0549);
                                                                                                   }
                                                                                                   §§goto(addr0624);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr031b:
                                                                                                   §§push(§§pop().rank);
                                                                                                   if(!(_loc14_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  §§push(_loc7_.configSpecialization);
                                                                                                                  if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     §§goto(addr0360);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr03b6);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0675);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc7_.configSpecialization);
                                                                                                               if(_loc13_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§goto(addr03b6);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr054e);
                                                                                                         }
                                                                                                         §§goto(addr0663);
                                                                                                      }
                                                                                                      §§goto(addr06ff);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0654);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0636);
                                                                                       }
                                                                                       §§goto(addr04d1);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc7_.configSpecialization);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§goto(addr0266);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02b8);
                                                                                 }
                                                                                 §§goto(addr06af);
                                                                              }
                                                                              §§goto(addr028a);
                                                                           }
                                                                           §§goto(addr05f6);
                                                                        }
                                                                        §§goto(addr02b8);
                                                                     }
                                                                     §§goto(addr062e);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc7_.configSpecialization);
                                                                     if(!(_loc14_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(§§pop().rank);
                                                                        if(_loc13_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(_loc6_.configSpecialisation);
                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                           {
                                                                              §§goto(addr031b);
                                                                           }
                                                                           §§goto(addr03cc);
                                                                        }
                                                                        §§goto(addr061c);
                                                                     }
                                                                  }
                                                                  §§goto(addr054e);
                                                               }
                                                               §§goto(addr06ce);
                                                            }
                                                            §§goto(addr0380);
                                                         }
                                                         §§goto(addr06af);
                                                      }
                                                      §§goto(addr031b);
                                                   }
                                                   §§goto(addr0529);
                                                }
                                                §§goto(addr01af);
                                             }
                                             §§goto(addr060d);
                                          }
                                          §§goto(addr0549);
                                       }
                                       §§goto(addr0551);
                                    }
                                    §§goto(addr060d);
                                 }
                                 §§goto(addr076c);
                              }
                              §§goto(addr04d1);
                           }
                           §§goto(addr0792);
                        }
                        §§goto(addr076c);
                     }
                     §§goto(addr078c);
                  }
                  §§goto(addr0784);
               }
               §§goto(addr0099);
            }
            §§goto(addr0097);
         }
         if(!(_loc14_ && Boolean(_loc2_)))
         {
            param1.currentSuccessPoints = _loc2_;
         }
         return Math.round(_loc2_ / (param1.maxSuccessPoints / 100));
      }
      
      private function calculateMaxSuccess(param1:EmergencyInfoVo) : Number
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:EmergencyRequirementDTO = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         loop0:
         for each(_loc6_ in param1.emergencyDTO.config.emergencyRequirements)
         {
            if(!(_loc10_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(!_loc10_)
               {
                  §§push(_loc6_.configSpecialization);
                  if(!_loc10_)
                  {
                     §§push(§§pop().slotMaxValue);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              _loc2_ = §§pop();
                              if(!_loc11_)
                              {
                                 continue;
                              }
                              var _loc9_:* = _loc6_.configSpecialization.department;
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    §§push(_loc9_);
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(0);
                                             if(_loc11_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr01fb:
                                             §§push(1);
                                             if(_loc10_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                          if(_loc11_)
                                          {
                                             §§push(_loc9_);
                                             if(_loc11_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc11_ || Boolean(param1))
                                                   {
                                                      §§goto(addr01fb);
                                                   }
                                                   else
                                                   {
                                                      addr0212:
                                                      §§push(2);
                                                      if(_loc11_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                   addr0232:
                                                   if(!_loc10_)
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §§push(param1.currentFireGrade);
                                                               if(_loc11_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(_loc10_ && Boolean(this))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  §§push(param1.requiredFireGrade);
                                                                  if(_loc11_ || Boolean(param1))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  addr016c:
                                                                  _loc5_ = §§pop();
                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  addr03ca:
                                                                  §§push(_loc3_);
                                                                  if(_loc11_ || Boolean(_loc3_))
                                                                  {
                                                                     addr03d9:
                                                                     §§push(_loc6_.configSpecialization);
                                                                     if(_loc11_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§pop().slotMaxValue);
                                                                        if(!(_loc10_ && Boolean(this)))
                                                                        {
                                                                           addr03fd:
                                                                           §§push(0.5);
                                                                           if(_loc11_ || Boolean(_loc2_))
                                                                           {
                                                                              addr040d:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc10_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_ || Boolean(param1))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc11_ || Boolean(_loc2_))
                                                                                       {
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 addr0450:
                                                                                 §§push(2);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr0458:
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr0471:
                                                                                       addr0474:
                                                                                       addr0473:
                                                                                       addr046e:
                                                                                       addr0469:
                                                                                       §§push(§§pop() + _loc6_.configSpecialization.slotMaxValue * 0.25);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr047b:
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr047b);
                                                                                 }
                                                                                 §§goto(addr0471);
                                                                              }
                                                                              §§goto(addr0474);
                                                                           }
                                                                           §§goto(addr0473);
                                                                        }
                                                                        §§goto(addr0471);
                                                                     }
                                                                     §§goto(addr046e);
                                                                  }
                                                                  §§goto(addr0469);
                                                               }
                                                               else
                                                               {
                                                                  addr0144:
                                                                  §§push(§§pop());
                                                                  if(_loc11_ || Boolean(_loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr0391:
                                                                  §§push(_loc4_);
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc10_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr03b0:
                                                                        §§push(1);
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!(_loc11_ || Boolean(param1)))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr03ca);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0449:
                                                                              addr0447:
                                                                              §§push(_loc5_ - _loc4_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr0450);
                                                                              }
                                                                           }
                                                                           §§goto(addr047b);
                                                                        }
                                                                        §§goto(addr0471);
                                                                     }
                                                                     §§goto(addr0469);
                                                                  }
                                                                  §§goto(addr0449);
                                                               }
                                                            case 1:
                                                               §§push(param1.currentPoliceGrade);
                                                               if(!(_loc11_ || Boolean(this)))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc11_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc10_ && Boolean(param1)))
                                                                  {
                                                                     §§push(param1.requiredPoliceGrade);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           addr011d:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc11_ || Boolean(_loc2_))
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr016c);
                                                                  }
                                                                  addr033d:
                                                                  §§push(_loc3_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr0344:
                                                                     §§push(_loc6_.configSpecialization);
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(§§pop().slotMaxValue);
                                                                        if(_loc11_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc11_ || Boolean(_loc3_))
                                                                           {
                                                                              addr036f:
                                                                              §§push(§§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr03ca);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr03b0);
                                                                              }
                                                                           }
                                                                           §§goto(addr03d9);
                                                                        }
                                                                        §§goto(addr03fd);
                                                                     }
                                                                     §§goto(addr046e);
                                                                  }
                                                                  §§goto(addr036f);
                                                               }
                                                               §§goto(addr011d);
                                                               break;
                                                            case 2:
                                                               §§push(param1.currentHospitalGrade);
                                                               if(_loc10_ && Boolean(_loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr0144);
                                                               break;
                                                            default:
                                                               break loop1;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(param1.requiredHospitalGrade);
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§goto(addr016c);
                                                            }
                                                            addr0304:
                                                            §§push(_loc4_);
                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                            {
                                                               addr0314:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc11_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc10_ && Boolean(this))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr033d);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc10_ && Boolean(param1)))
                                                                        {
                                                                           §§goto(addr0391);
                                                                        }
                                                                     }
                                                                     §§goto(addr0447);
                                                                  }
                                                                  §§goto(addr0471);
                                                               }
                                                               §§goto(addr036f);
                                                            }
                                                            §§goto(addr0449);
                                                         }
                                                      }
                                                      addr0251:
                                                      §§push(_loc4_);
                                                      if(_loc11_ || Boolean(this))
                                                      {
                                                         §§push(0);
                                                         if(!_loc10_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc11_ || Boolean(param1))
                                                               {
                                                                  §§push(_loc6_.configSpecialization);
                                                                  if(_loc11_ || Boolean(param1))
                                                                  {
                                                                     addr02a3:
                                                                     §§push(§§pop().slotMaxValue);
                                                                     if(_loc11_ || Boolean(this))
                                                                     {
                                                                        §§push(0.1);
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc10_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc11_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr02e9:
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc10_ && Boolean(this))
                                                                                    {
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr0450);
                                                                              }
                                                                              §§goto(addr047b);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr040d);
                                                                        }
                                                                        §§goto(addr0474);
                                                                     }
                                                                     §§goto(addr0458);
                                                                  }
                                                                  §§goto(addr046e);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr036f);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr0304);
                                                               }
                                                               §§goto(addr0391);
                                                            }
                                                            §§goto(addr0449);
                                                         }
                                                         §§goto(addr0314);
                                                      }
                                                      §§goto(addr0447);
                                                   }
                                                   §§goto(addr0391);
                                                }
                                                else
                                                {
                                                   addr020e:
                                                   addr020c:
                                                   if(ServerTagConstants.HOSPITAL === _loc9_)
                                                   {
                                                      §§goto(addr0212);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                   §§goto(addr0232);
                                                }
                                             }
                                             §§goto(addr020e);
                                          }
                                          §§goto(addr020c);
                                       }
                                       §§goto(addr0232);
                                    }
                                    §§goto(addr020e);
                                 }
                                 §§goto(addr020c);
                              }
                              §§goto(addr01fb);
                           }
                           §§goto(addr036f);
                        }
                        §§goto(addr02e9);
                     }
                     §§goto(addr0471);
                  }
                  §§goto(addr02a3);
               }
               §§goto(addr0344);
            }
            §§goto(addr0251);
         }
         if(!_loc10_)
         {
            param1.maxSuccessPoints = _loc2_;
            if(!(_loc10_ && Boolean(_loc3_)))
            {
               param1.maxPossibleSuccessPoints = _loc3_;
            }
         }
         return Math.round(_loc3_ / (_loc2_ / 100));
      }
      
      private function getRequiredSecurityGrade(param1:EmergencyDTO, param2:String) : int
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:DepartmentRequirementDTO = null;
         for each(_loc3_ in param1.config.departmentRequirements)
         {
            if(_loc7_ || Boolean(this))
            {
               if(_loc3_.departmentType == param2)
               {
                  if(!_loc6_)
                  {
                     return _loc3_.emergencyCode;
                  }
               }
            }
         }
         return 0;
      }
      
      private function calculateCurrentCoinAmount(param1:EmergencyInfoVo) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(param1.efficiencyPoints);
            if(_loc4_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc5_)
                  {
                     addr0036:
                     _loc2_ = param1.rewardAmountThresholds[0];
                  }
                  else
                  {
                     while(_loc3_ < param1.rewardAmountThresholds.length)
                     {
                        if(param1.efficiencyPoints >= param1.rewardAmountThresholds[_loc3_].threshold)
                        {
                           if(_loc5_ && Boolean(this))
                           {
                              break;
                           }
                           _loc2_ = param1.rewardAmountThresholds[_loc3_];
                        }
                        _loc3_++;
                        if(!(_loc4_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                     }
                     addr00cd:
                  }
                  §§goto(addr00d8);
               }
               else
               {
                  addr004b:
                  if(param1.efficiencyPoints >= param1.efficiencyMaxPoints)
                  {
                     if(!_loc5_)
                     {
                        _loc2_ = param1.rewardAmountThresholds[param1.rewardAmountThresholds.length - 1];
                     }
                     else
                     {
                        §§goto(addr00cd);
                     }
                     addr00d8:
                     if(_loc2_)
                     {
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           return _loc2_.value;
                        }
                     }
                     return 0;
                  }
                  _loc3_ = 0;
               }
               §§goto(addr00cd);
            }
            §§goto(addr004b);
         }
         §§goto(addr0036);
      }
      
      private function calculateCurrentReward(param1:EmergencyInfoVo) : ConfigGoodDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(param1.luckPoints);
            if(_loc4_)
            {
               if(§§pop() == 0)
               {
                  if(_loc4_)
                  {
                     _loc2_ = param1.rewardTypeThresholds[0];
                  }
                  else
                  {
                     while(_loc3_ < param1.rewardTypeThresholds.length)
                     {
                        if(param1.luckPoints >= param1.rewardTypeThresholds[_loc3_].threshold)
                        {
                           if(!(_loc4_ || Boolean(param1)))
                           {
                              continue;
                           }
                           _loc2_ = param1.rewardTypeThresholds[_loc3_];
                        }
                        _loc3_++;
                        if(!(_loc4_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                     }
                     addr00df:
                  }
                  §§goto(addr00ea);
               }
               else
               {
                  addr0054:
                  if(param1.luckPoints > param1.luckMaxPoints)
                  {
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc2_ = param1.rewardTypeThresholds[param1.rewardTypeThresholds.length - 1];
                        addr006a:
                     }
                     else
                     {
                        §§goto(addr00df);
                     }
                     addr00ea:
                     if(_loc2_)
                     {
                        if(!_loc5_)
                        {
                           return this._configProxy.config.goods[_loc2_.value];
                        }
                     }
                     return null;
                  }
                  _loc3_ = 0;
               }
               §§goto(addr00df);
            }
            §§goto(addr0054);
         }
         §§goto(addr006a);
      }
      
      private function updateEmergencyAfterSlotChange(param1:EmergencyInfoVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.possibleProfessionals = this.getAvailableProfessionals(param1);
            if(!_loc2_)
            {
               param1.currentSuccessPercent = this.calculateCurrentSuccess(param1);
               if(!_loc2_)
               {
                  addr0040:
                  param1.efficiencyPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     param1.luckPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_LUCK);
                     if(!_loc2_)
                     {
                        param1.goofyPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr009b:
                           param1.currentReward = this.calculateCurrentReward(param1);
                           if(_loc3_ || Boolean(this))
                           {
                              param1.currentRewardAmount = this.calculateCurrentCoinAmount(param1);
                              addr00b3:
                              if(_loc3_)
                              {
                                 addr00cf:
                                 this._emergencyDictionary[param1.billboardObjVo.buildingDTO.id] = param1;
                                 if(_loc3_)
                                 {
                                    addr00e5:
                                    sendNotification(ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED,param1.billboardObjVo.buildingDTO.id);
                                 }
                              }
                              §§goto(addr00f8);
                           }
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00cf);
               }
               addr00f8:
               return;
            }
            §§goto(addr00b3);
         }
         §§goto(addr0040);
      }
   }
}

