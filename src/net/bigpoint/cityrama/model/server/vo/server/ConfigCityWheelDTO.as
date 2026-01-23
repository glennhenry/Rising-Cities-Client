package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   
   public class ConfigCityWheelDTO
   {
      
      private var _wheelBuffs:Dictionary;
      
      private var _istOfEventIds:Vector.<Number>;
      
      public function ConfigCityWheelDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(_loc7_ || Boolean(param1))
         {
            this._wheelBuffs = new Dictionary();
            if(_loc7_ || Boolean(param1))
            {
               this._istOfEventIds = new Vector.<Number>();
               if(!_loc6_)
               {
                  super();
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = param1.cb;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(!(_loc7_ || Boolean(this)))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc6_)
               {
                  if(!_loc2_.g)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               this._wheelBuffs[_loc2_.i] = new ConfigCityWheelBuffDTO(_loc2_);
               continue;
            }
            if(!_loc6_)
            {
               if(_loc7_)
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     _loc4_ = 0;
                     if(!(_loc6_ && Boolean(this)))
                     {
                        addr00f9:
                        _loc5_ = param1.e;
                        while(true)
                        {
                           §§push(§§hasnext(_loc5_,_loc4_));
                           break loop0;
                        }
                        addr013e:
                        addr0137:
                     }
                  }
                  return;
               }
               §§goto(addr00f9);
            }
            §§goto(addr013e);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc4_,_loc5_);
            if(_loc7_ || Boolean(_loc3_))
            {
               this._istOfEventIds.push(Number(_loc3_));
            }
            §§goto(addr0137);
         }
         §§goto(addr013e);
      }
      
      public function get wheelBuffs() : Dictionary
      {
         return this._wheelBuffs;
      }
      
      public function get istOfEventIds() : Vector.<Number>
      {
         return this._istOfEventIds;
      }
   }
}

