package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.IProfessionalCharacteristicsVo;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.IProfessionalSlotVo;
   
   public class DepartmentProfessionalDetailInfoVo implements IProfessionalSlotVo, IProfessionalCharacteristicsVo
   {
      
      private var _name:String;
      
      private var _levelsConfig:Vector.<ConfigProfessionalLevelDTO>;
      
      private var _traits:Vector.<String>;
      
      private var _unspentSkillPoints:uint;
      
      private var _dismissIsUnlocked:Boolean;
      
      protected var _dto:ProfessionalDTO;
      
      private var _attributes:Vector.<ProfessionalAttributeVO>;
      
      public function DepartmentProfessionalDetailInfoVo()
      {
         super();
      }
      
      private static function sortAttributes(param1:ProfessionalAttributeVO, param2:ProfessionalAttributeVO) : int
      {
         if(param1.configId > param2.configId)
         {
            return 1;
         }
         if(param1.configId < param2.configId)
         {
            return -1;
         }
         return 0;
      }
      
      public function get dismissIsUnlocked() : Boolean
      {
         return this._dismissIsUnlocked;
      }
      
      public function set dismissIsUnlocked(param1:Boolean) : void
      {
         this._dismissIsUnlocked = param1;
      }
      
      public function get unspentSkillPoints() : uint
      {
         return this._dto.unspentSkillPoints;
      }
      
      public function get traits() : Vector.<String>
      {
         return this._traits;
      }
      
      public function set traits(param1:Vector.<String>) : void
      {
         this._traits = param1;
      }
      
      public function get levelsConfig() : Vector.<ConfigProfessionalLevelDTO>
      {
         return this._levelsConfig;
      }
      
      public function setLevelsConfig(param1:Dictionary) : void
      {
         var _loc2_:ConfigProfessionalLevelDTO = null;
         this._levelsConfig = new Vector.<ConfigProfessionalLevelDTO>(0);
         for each(_loc2_ in param1)
         {
            this._levelsConfig.push(_loc2_);
         }
      }
      
      public function get maxLevel() : Number
      {
         return this._levelsConfig.length;
      }
      
      public function get attributes() : Vector.<ProfessionalAttributeVO>
      {
         return this._attributes;
      }
      
      public function get levelupReady() : Boolean
      {
         return this._dto.canLevelUp;
      }
      
      public function get currentLevel() : uint
      {
         var _loc2_:ConfigProfessionalLevelDTO = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.levelsConfig)
         {
            if(_loc2_.xpThreshold <= this.currentXp)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function get levelProgressScalar() : Number
      {
         var _loc1_:Number = this.currentXp - this.levelsConfig[this.currentLevel - 1].xpThreshold;
         return Math.min(_loc1_ / (this.nextLevelXpThreshold - this.levelsConfig[this.currentLevel - 1].xpThreshold),1);
      }
      
      public function get profImage() : String
      {
         return "small_" + this._dto.gfxId;
      }
      
      public function get profLib() : String
      {
         var _loc1_:String = this._dto.gender ? "male" : "female";
         return "gui_professionals_" + _loc1_;
      }
      
      public function get profId() : Number
      {
         return this._dto.id;
      }
      
      public function get operationsLeft() : uint
      {
         return this._dto.lifetime;
      }
      
      public function get specialisationGfxId() : int
      {
         return this._dto.configSpecialisation.gfxId;
      }
      
      public function get specialisationLocaId() : String
      {
         return this._dto.configSpecialisation.locaId;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get currentXp() : Number
      {
         return this._dto.experience;
      }
      
      public function get nextLevelXpThreshold() : Number
      {
         if(this.levelsConfig.length > this.currentLevel)
         {
            return this.levelsConfig[this.currentLevel].xpThreshold;
         }
         return 0;
      }
      
      public function get lastLevelXpThreshold() : Number
      {
         if(this.currentLevel > 0 && this.currentLevel < this.levelsConfig.length)
         {
            return this.levelsConfig[this.currentLevel - 1].xpThreshold;
         }
         return 0;
      }
      
      public function set dto(param1:ProfessionalDTO) : void
      {
         this._dto = param1;
      }
      
      public function get department() : String
      {
         return this._dto.configSpecialisation.department;
      }
      
      public function get profSpecialisationGfxId() : Number
      {
         return this.specialisationGfxId;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this.specialisationLocaId;
      }
      
      public function get characteristicEntries() : Vector.<CharacteristicsEntryVo>
      {
         var _loc2_:ProfessionalTraitDTO = null;
         var _loc3_:Boolean = false;
         var _loc4_:CharacteristicsEntryVo = null;
         var _loc5_:String = null;
         var _loc1_:Vector.<CharacteristicsEntryVo> = new Vector.<CharacteristicsEntryVo>(0);
         for each(_loc2_ in this._dto.traits)
         {
            _loc3_ = false;
            for each(_loc4_ in _loc1_)
            {
               if(_loc4_.localeId == _loc2_.config.localeid)
               {
                  _loc4_.amountSum += _loc2_.config.value * _loc2_.stacks;
                  _loc3_ = true;
               }
            }
            if(!_loc3_)
            {
               _loc5_ = this._dto.gender ? "male" : "female";
               _loc1_.push(new CharacteristicsEntryVo(_loc2_.config.localeid,_loc2_.config.value * _loc2_.stacks,_loc5_));
            }
         }
         return _loc1_;
      }
      
      public function set attributes(param1:Vector.<ProfessionalAttributeVO>) : void
      {
         this._attributes = param1;
         this._attributes.sort(sortAttributes);
      }
   }
}

