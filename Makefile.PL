use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME' => 'pathup',
    'VERSION_FROM' => 'pathup',
    'EXE_FILES' => [ 'pathup' ],
    'PREREQ_PM' => {
        'File::Spec' => 0,
        'Cwd' => 0,
    },
);

