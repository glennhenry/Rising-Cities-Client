package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class DecorationVo implements ILoggableObject
   {
      
      private var _dto:DecorationDTO;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function DecorationVo(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super();
            if(!(_loc3_ && Boolean(param2)))
            {
               §§goto(addr003f);
            }
            §§goto(addr0086);
         }
         addr003f:
         if(param1 is DecorationDTO)
         {
            if(_loc4_)
            {
               this._dto = param1 as DecorationDTO;
               if(_loc4_)
               {
               }
            }
            addr0086:
            this._config = param2;
         }
         else
         {
            this._dto = new DecorationDTO(param1);
            if(_loc4_ || _loc3_)
            {
               §§goto(addr0086);
            }
         }
      }
      
      public function get id() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._dto);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
               §§push(this._dto);
            }
            return §§pop().id;
         }
         addr0042:
         throw new RamaCityError("Decoration dto is null");
      }
      
      public function get configId() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.config);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     §§push(§§findproperty(RamaCityError));
                     §§push("Decoration config is null dto id: ");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() + this._dto.id);
                     }
                     throw new §§pop().RamaCityError(§§pop());
                  }
               }
               addr0064:
               §§push(this.config);
            }
            return §§pop().id;
         }
         §§goto(addr0064);
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get dto() : DecorationDTO
      {
         return this._dto;
      }
      
      public function set dto(param1:DecorationDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._dto = param1;
         }
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._config = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.config.id != this.dto.configId)
               {
                  if(_loc3_)
                  {
                     addr003f:
                     §§push(§§findproperty(RamaCityError));
                     §§push("Config does not match id, object broken? ");
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() + this);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr006f:
                           §§push(" uocid:");
                           if(!_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc3_)
                              {
                                 §§push(this.dto.configId);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       addr00a8:
                                       §§push(§§pop() + " cid:");
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00bb:
                                          addr00b6:
                                          §§push(§§pop() + this.config.id);
                                       }
                                    }
                                    throw new §§pop().RamaCityError(§§pop());
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr006f);
                  }
               }
               §§goto(addr00c1);
            }
            §§goto(addr003f);
         }
         addr00c1:
      }
   }
}

