package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class ConfigEmergencyDTO
   {
      
      private var _lifetime:Number;
      
      private var _gfxId:Number;
      
      private var _locaId:Number;
      
      private var _departmentRequirements:Vector.<DepartmentRequirementDTO>;
      
      private var _emergencyRequirements:Vector.<EmergencyRequirementDTO>;
      
      public function ConfigEmergencyDTO(param1:Object)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(_loc6_)
         {
            super();
            if(_loc6_)
            {
               this._lifetime = param1.l;
               if(_loc6_)
               {
                  this._gfxId = param1.gid;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr0055:
                     this._locaId = param1.lid;
                     if(_loc6_)
                     {
                        addr0064:
                        this._departmentRequirements = new Vector.<DepartmentRequirementDTO>();
                     }
                     addr0073:
                     var _loc4_:int = 0;
                     var _loc5_:* = param1.d;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc5_,_loc4_));
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc4_,_loc5_);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              this._departmentRequirements.push(new DepartmentRequirementDTO(_loc2_));
                           }
                           continue;
                        }
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              if(!_loc7_)
                              {
                                 this._emergencyRequirements = new Vector.<EmergencyRequirementDTO>();
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    _loc4_ = 0;
                                    if(_loc6_)
                                    {
                                       addr010d:
                                       _loc5_ = param1.er;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc5_,_loc4_));
                                          break loop0;
                                       }
                                       addr0152:
                                       addr014b:
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr0152);
                     }
                     while(§§pop())
                     {
                        _loc3_ = §§nextvalue(_loc4_,_loc5_);
                        if(_loc6_ || Boolean(this))
                        {
                           this._emergencyRequirements.push(ConfigFactory.buildEmergencyRequirementDTO(_loc3_));
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr0152);
                  }
                  §§goto(addr0064);
               }
            }
            §§goto(addr0055);
         }
         §§goto(addr0073);
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get locaId() : Number
      {
         return this._locaId;
      }
      
      public function get departmentRequirements() : Vector.<DepartmentRequirementDTO>
      {
         return this._departmentRequirements;
      }
      
      public function get emergencyRequirements() : Vector.<EmergencyRequirementDTO>
      {
         return this._emergencyRequirements;
      }
      
      public function get mainDepeartment() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:DepartmentRequirementDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.departmentRequirements;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               if(_loc1_.mainDept)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return _loc1_.departmentType;
         }
         return _loc1_.departmentType;
      }
   }
}

